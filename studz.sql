-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 11 Lip 2016, 13:40
-- Wersja serwera: 10.1.10-MariaDB
-- Wersja PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `studz`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `faculties`
--

CREATE TABLE `faculties` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8_polish_ci NOT NULL COMMENT 'nazwa',
  `shortcut` varchar(30) COLLATE utf8_polish_ci NOT NULL COMMENT 'skrót',
  `year` int(4) UNSIGNED NOT NULL COMMENT 'rok rozpoczęcia np 2009'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `faculties`
--

INSERT INTO `faculties` (`id`, `name`, `shortcut`, `year`) VALUES
(1, 'Informatyka I stopnia dzienne', 'EF-DI', 2009),
(2, 'Informatyka II stopnia dzienne', 'EF-DU', 2009),
(3, 'Informatyka I stopnia zaoczne', 'EF-ZI', 2009),
(4, 'Informatyka II stopnia zaoczne', 'EF-ZU', 2009);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `grades`
--

CREATE TABLE `grades` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `value` decimal(2,1) UNSIGNED NOT NULL DEFAULT '0.0',
  `created` date NOT NULL,
  `description` varchar(128) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `grades`
--

INSERT INTO `grades` (`id`, `student_id`, `group_id`, `value`, `created`, `description`) VALUES
(1, 1, 1, '3.5', '2016-06-13', ''),
(2, 2, 2, '2.5', '2016-06-13', 'kapkę lepiej'),
(3, 11, 14, '3.5', '2016-06-18', 'za chęci'),
(4, 17, 10, '3.5', '2016-06-21', 'qweqw'),
(5, 17, 22, '2.5', '2016-06-21', ''),
(6, 17, 33, '5.0', '2016-06-22', 'albo i nie'),
(7, 17, 26, '5.0', '2016-06-24', 'fajowo'),
(8, 17, 23, '0.0', '2016-06-25', 'jeszcze nic nie powinno być'),
(9, 6, 1, '3.5', '2016-06-27', 'poprawione');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8_polish_ci NOT NULL COMMENT 'nazwa danej grupy np L01',
  `subject_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `type_id` int(2) UNSIGNED NOT NULL,
  `status` int(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'określa czy jest czy nie ma ogłoszenia',
  `description` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL COMMENT 'ogłoszenie dla grupy'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `groups`
--

INSERT INTO `groups` (`id`, `name`, `subject_id`, `teacher_id`, `type_id`, `status`, `description`) VALUES
(1, 'Z01', 1, 1, 1, 0, 'Zmieniamy na nowy wygląd ;P'),
(2, 'Z01', 1, 1, 1, 0, 'ogłoszenie testowe 2'),
(3, 'Z01', 1, 1, 1, 0, ''),
(7, 'Z01', 2, 1, 1, 0, ''),
(8, 'Z01', 2, 1, 1, 0, ''),
(9, 'Z01', 2, 1, 1, 0, ''),
(10, 'Z01', 3, 1, 1, 0, 'ppp2'),
(11, 'Z01', 3, 1, 1, 0, ''),
(12, 'Z01', 4, 1, 1, 0, ''),
(13, 'Z01', 4, 1, 1, 0, ''),
(14, 'Z01', 5, 2, 1, 0, ''),
(15, 'Z01', 5, 2, 1, 0, ''),
(16, 'Z01', 5, 2, 1, 0, ''),
(17, 'Z01', 5, 2, 1, 0, ''),
(18, 'Z01', 6, 2, 1, 0, ''),
(19, 'Z01', 6, 2, 1, 0, ''),
(20, 'Z01', 6, 2, 1, 0, ''),
(21, 'Z01', 6, 2, 1, 0, ''),
(22, 'Z01', 7, 5, 1, 0, ''),
(23, 'W01', 7, 5, 3, 0, 'będzie cieżko ale jakos moze dacie rade zobaczymy jak sie bedzie wspolpracowac. ostatni termin zaliczenia to 6 czerwca'),
(24, 'Z01', 8, 6, 1, 0, ''),
(25, 'Z01', 8, 6, 1, 0, ''),
(26, 'Z01', 9, 3, 1, 0, ''),
(27, 'Z01', 10, 4, 1, 0, ''),
(28, 'Z01', 11, 6, 1, 0, ''),
(29, 'Z01', 11, 5, 1, 0, ''),
(30, 'Z01', 11, 1, 1, 0, ''),
(31, 'Z01', 12, 5, 1, 0, ''),
(32, 'Z01', 12, 4, 1, 0, ''),
(33, 'Z01', 12, 1, 1, 0, 'nowe ogłoszenie'),
(34, 'Z01', 12, 1, 1, 0, '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` int(10) UNSIGNED NOT NULL COMMENT 'numer indeksu',
  `password` varchar(40) COLLATE utf8_polish_ci NOT NULL COMMENT 'hasło',
  `pesel` bigint(11) UNSIGNED NOT NULL COMMENT 'pesel',
  `name` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `surname` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(40) COLLATE utf8_polish_ci NOT NULL COMMENT 'mail',
  `place` varchar(40) COLLATE utf8_polish_ci NOT NULL COMMENT 'miejscowosc zamieszkania',
  `street` varchar(50) COLLATE utf8_polish_ci NOT NULL COMMENT 'ulica zamieszkania',
  `phone` int(9) UNSIGNED NOT NULL COMMENT 'numer telefonu',
  `status` int(1) UNSIGNED NOT NULL COMMENT 'statusid albo status studenta z listy',
  `validity` date NOT NULL COMMENT 'data waznosci studenta'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `students`
--

INSERT INTO `students` (`id`, `number`, `password`, `pesel`, `name`, `surname`, `email`, `place`, `street`, `phone`, `status`, `validity`) VALUES
(1, 123456, 'bba12f60d0db3c91042caf20d540c63d', 96120439868, 'Iwonaśćłą', 'Borkowska', 'a@a.com', '04-663 Warszawa', 'Blekitna 95', 727113592, 1, '2016-10-31'),
(2, 123745, 'bba12f60d0db3c91042caf20d540c63d', 88050934139, 'Urjasz', 'Kucharski', 'UrjaszKucharskistudpl', '91-612 Lodz', 'Spiska 121', 667609177, 1, '2016-10-31'),
(3, 123122, 'bba12f60d0db3c91042caf20d540c63d', 89042003208, 'Raclaw', 'Pawlak', 'RaclawPawlakstudpl', '75-810 Koszalin', 'Wita Stwosza 39', 788735004, 1, '2016-10-31'),
(4, 123457, 'bba12f60d0db3c91042caf20d540c63d', 89121347689, 'Stefania', 'Gorska', 'StefaniaGorskastudpl', '45-644 Opole', 'Wislok 146', 798988324, 1, '2016-10-31'),
(5, 123555, 'bba12f60d0db3c91042caf20d540c63d', 94080905708, 'Nicola', 'Janik', 'NicolaJanikstudpl', '71-019 Szczecin', 'Brzoskwiniowa 135', 795299927, 1, '2016-06-30'),
(6, 123666, 'bba12f60d0db3c91042caf20d540c63d', 91072201169, 'Sebastian', 'Wojciechowski', 'SebastianWojciechowskistudpl', '04-421 Warszawa', 'Pszona Mieczyslawa 10', 663772020, 1, '2016-06-30'),
(7, 123777, 'bba12f60d0db3c91042caf20d540c63d', 96090817763, 'Ida', 'Kaminska', 'IdaKaminskastudpl', '41-409 Myslowice', 'Ceramiczna 144', 799230438, 1, '2016-06-30'),
(8, 123888, 'bba12f60d0db3c91042caf20d540c63d', 95102519875, 'Piotr', 'Dabrowski', 'PiotrDabrowskistudpl', '41-806 Zabrze', 'Do Dworca 148', 780970800, 1, '2016-06-30'),
(9, 123199, 'bba12f60d0db3c91042caf20d540c63d', 93022610076, 'Jaroslaw', 'Kopec', 'JaroslawKopecstudpl', '81-744 Sopot', 'Ksiedza Skargi Piotra 136', 795676302, 1, '2016-06-30'),
(10, 122522, 'bba12f60d0db3c91042caf20d540c63d', 92010818836, 'Julia', 'Kowalczyk', 'JuliaKowalczykstudpl', '01-354 Warszawa', 'Flory 140', 727184956, 1, '2016-06-30'),
(11, 124422, 'bba12f60d0db3c91042caf20d540c63d', 93123019501, 'Bruno', 'Glowacki', 'BrunoGlowackistudpl', '80-728 Gdansk', 'Beskidzka 136', 739384202, 1, '2016-06-30'),
(12, 121122, 'bba12f60d0db3c91042caf20d540c63d', 93032701799, 'Jan', 'Wojciechowski', 'JanWojciechowskistudpl', '60-473 Poznan', 'Miodowa 102', 572181592, 1, '2016-06-30'),
(13, 113122, 'bba12f60d0db3c91042caf20d540c63d', 93050317404, 'Patrycja', 'Polak', 'PatrycjaPolakstudpl', '65-109 Zielona G?ra', 'Marszalkowska 55', 739361225, 1, '2016-06-30'),
(14, 126122, 'bba12f60d0db3c91042caf20d540c63d', 91120614996, 'Aleksander', 'Kowalczyk', 'AleksanderKowalczykstudpl', '80-299 Gdansk', 'Szarotki 114', 798374438, 1, '2016-06-30'),
(15, 113199, 'bba12f60d0db3c91042caf20d540c63d', 93032309706, 'Eryk', 'Zalewski', 'ErykZalewskistudpl', '30-218 Kraków', 'Ksawerowska 79', 607664232, 1, '2016-06-30'),
(16, 153457, 'bba12f60d0db3c91042caf20d540c63d', 86072515101, 'Izabela', 'Dudek', 'IzabelaDudekstudpl', '35-005 Rzeszów', 'Retoryka 40', 728955971, 1, '2016-06-30'),
(17, 117666, 'bba12f60d0db3c91042caf20d540c63d', 87110305675, 'Criss', 'Cross', 'cross@interia.pl', '14-356\nOgrzeg', 'misia pysia 106', 889483639, 1, '2016-06-16');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `faculty_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) COLLATE utf8_polish_ci NOT NULL COMMENT 'np sieci komputerowe ',
  `semester` int(2) UNSIGNED NOT NULL COMMENT 'pierwszy , drugi dziesiąty'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `subjects`
--

INSERT INTO `subjects` (`id`, `faculty_id`, `name`, `semester`) VALUES
(1, 2, 'Programowanie funkcjonalne', 2),
(2, 4, 'Programowanie funkcjonalne', 2),
(3, 1, 'Wstep do programowania', 1),
(4, 3, 'Wstep do programowania', 1),
(5, 2, 'Programowanie funkcjonalne', 2),
(6, 4, 'Programowanie funkcjonalne', 2),
(7, 1, 'Programowanie w jezyku C', 2),
(8, 3, 'Programowanie w jezyku C', 2),
(9, 1, 'Praca dyplomowa', 5),
(10, 3, 'Praca dyplomowa', 5),
(11, 2, 'Matematyka dyskretna 2', 1),
(12, 4, 'Matematyka dyskretna 2', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` int(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'czy pracownik to administrator',
  `name` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `surname` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_polish_ci NOT NULL COMMENT 'hasło',
  `pesel` bigint(11) NOT NULL,
  `place` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `street` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `phone` int(9) UNSIGNED NOT NULL,
  `room` int(4) UNSIGNED NOT NULL,
  `building` varchar(1) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `title_id` int(1) UNSIGNED NOT NULL,
  `hired` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `teachers`
--

INSERT INTO `teachers` (`id`, `role`, `name`, `surname`, `password`, `pesel`, `place`, `street`, `phone`, `room`, `building`, `email`, `title_id`, `hired`) VALUES
(1, 0, 'Gall', 'Anonnim', 'bba12f60d0db3c91042caf20d540c63d', 93120356753, '35-117 Rzeszów', 'Staroniwa 24', 880432117, 306, 'F', 'teacher@prz.edu.pl', 1, '2016-01-21'),
(2, 0, 'Hanna', 'Sokal', 'bba12f60d0db3c91042caf20d540c63d', 67012524588, '60-506 Poznan', 'Piotra Skargi 65', 885011118, 207, 'F', 'HSokal@prz.edu.pl', 2, '2001-06-01'),
(3, 0, 'Anna', 'Zima', 'bba12f60d0db3c91042caf20d540c63d', 87012524588, '01-597 Warszawa', '1 Sierpnia 4', 699542396, 7, 'C', 'AZimna@prz.edu.pl', 1, '2010-05-01'),
(4, 0, 'Stefan', 'Kostur', 'bba12f60d0db3c91042caf20d540c63d', 75022006813, '51-108 Wroclaw', 'Sienkiewicza Henryka 127', 699269162, 307, 'F', 'SKostur@prz.edu.pl', 2, '1993-11-04'),
(5, 0, 'Antoni', 'Malinowski', 'bba12f60d0db3c91042caf20d540c63d', 32110827318, '03-975 Warszawa', 'Rubinowa 5/15', 881868883, 106, 'B', 'AMalina@prz.edu.pl', 3, '1973-01-01'),
(6, 0, 'Franciszek', 'Kozak', 'bba12f60d0db3c91042caf20d540c63d', 81101439939, '02-134 Warszawa', 'Spokojna 4/10', 882277534, 410, 'A', 'FKozak@prz.edu.pl', 1, '2000-01-01'),
(7, 1, 'Adam', 'Administrator', 'bba12f60d0db3c91042caf20d540c63d', 90100709875, 'bd', 'bd', 2149, 100, 'F', 'admin@prz.edu.pl', 4, '2016-04-30');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `titles`
--

CREATE TABLE `titles` (
  `id` int(1) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `titles`
--

INSERT INTO `titles` (`id`, `name`) VALUES
(1, 'dr'),
(2, 'dr hab.'),
(3, 'prof.'),
(4, 'mgr inż.'),
(5, 'mgr');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `types`
--

CREATE TABLE `types` (
  `id` int(2) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(1, 'Zaliczenie'),
(2, 'Egzamin'),
(3, 'Wyklad'),
(4, 'Cwiczenia'),
(5, 'Laboratoria'),
(6, 'Projekty');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stud_id` (`student_id`),
  ADD KEY `gr_id` (`group_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_przed` (`subject_id`),
  ADD KEY `id_prow` (`teacher_id`),
  ADD KEY `id_grtyp` (`type_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stud_idks` (`number`),
  ADD UNIQUE KEY `stud_psl` (`pesel`),
  ADD UNIQUE KEY `stud_mail` (`email`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kier_id` (`faculty_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prow_psl` (`pesel`),
  ADD UNIQUE KEY `prac_mailwew` (`email`),
  ADD KEY `id_tytnauk` (`title_id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT dla tabeli `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT dla tabeli `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT dla tabeli `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT dla tabeli `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT dla tabeli `titles`
--
ALTER TABLE `titles`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `types`
--
ALTER TABLE `types`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `group_key` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_key` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `subject_key` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_key` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `type_key` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `faculty_key` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `title_key` FOREIGN KEY (`title_id`) REFERENCES `titles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
