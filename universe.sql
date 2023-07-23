--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: fifthtable; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifthtable (
    fifthtable_id integer NOT NULL,
    name character varying(20),
    int_column integer NOT NULL,
    int2_column integer NOT NULL,
    bool_column boolean,
    bool2_column boolean,
    text_column text,
    numeric_column numeric,
    galaxy_id integer
);


ALTER TABLE public.fifthtable OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    int_column integer NOT NULL,
    int2_column integer NOT NULL,
    bool_column boolean,
    bool2_column boolean,
    text_column text,
    numeric_column numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    int_column integer NOT NULL,
    int2_column integer NOT NULL,
    bool_column boolean,
    bool2_column boolean,
    text_column text,
    numeric_column numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    int_column integer NOT NULL,
    int2_column integer NOT NULL,
    bool_column boolean,
    bool2_column boolean,
    text_column text,
    numeric_column numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    int_column integer NOT NULL,
    int2_column integer NOT NULL,
    bool_column boolean,
    bool2_column boolean,
    text_column text,
    numeric_column numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: fifthtable; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifthtable VALUES (1, 'GalaxyOne', 95, 95, true, false, 'test', 6, NULL);
INSERT INTO public.fifthtable VALUES (2, 'GalaxyOne', 5, 5, true, false, 'test', 6, NULL);
INSERT INTO public.fifthtable VALUES (3, 'GalaxyOne', 85, 85, true, false, 'test', 6, NULL);
INSERT INTO public.fifthtable VALUES (4, 'GalaxyOne', 88, 88, true, false, 'test', 6, NULL);
INSERT INTO public.fifthtable VALUES (5, 'GalaxyOne', 66, 66, true, false, 'test', 6, NULL);
INSERT INTO public.fifthtable VALUES (6, 'GalaxyOne', 6, 6, true, false, 'test', 6, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'GalaxyOne', 2, 4, true, false, 'test', 6);
INSERT INTO public.galaxy VALUES (3, 'GalaxyOne', 4, 6, true, false, 'test', 6);
INSERT INTO public.galaxy VALUES (4, 'GalaxyOne', 46, 66, true, false, 'test', 6);
INSERT INTO public.galaxy VALUES (5, 'GalaxyOne', 9, 9, true, false, 'test', 6);
INSERT INTO public.galaxy VALUES (6, 'GalaxyOne', 49, 59, true, false, 'test', 6);
INSERT INTO public.galaxy VALUES (7, 'GalaxyOne', 95, 95, true, false, 'test', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'PlanetOne', 1, 2, true, false, 'set', 55, 1);
INSERT INTO public.moon VALUES (2, 'PlanetOne', 3, 4, true, false, 'set', 55, 1);
INSERT INTO public.moon VALUES (3, 'PlanetOne', 5, 6, true, false, 'set', 55, 1);
INSERT INTO public.moon VALUES (4, 'PlanetOne', 7, 8, true, false, 'set', 55, 1);
INSERT INTO public.moon VALUES (5, 'PlanetOne', 9, 10, true, false, 'set', 55, 1);
INSERT INTO public.moon VALUES (6, 'PlanetOne', 11, 12, true, false, 'set', 55, 1);
INSERT INTO public.moon VALUES (7, 'PlanetOne', 13, 14, true, false, 'set', 55, 1);
INSERT INTO public.moon VALUES (8, 'PlanetOne', 115, 16, true, false, 'set', 55, 1);
INSERT INTO public.moon VALUES (9, 'PlanetOne', 17, 18, true, false, 'set', 55, 1);
INSERT INTO public.moon VALUES (10, 'PlanetOne', 19, 20, true, false, 'set', 55, 1);
INSERT INTO public.moon VALUES (11, 'PlanetOne', 21, 22, true, false, 'set', 55, 1);
INSERT INTO public.moon VALUES (12, 'PlanetOne', 23, 24, true, false, 'set', 55, 1);
INSERT INTO public.moon VALUES (13, 'PlanetOne', 25, 26, true, false, 'set', 55, 1);
INSERT INTO public.moon VALUES (14, 'PlanetOne', 227, 28, true, false, 'set', 55, 1);
INSERT INTO public.moon VALUES (15, 'PlanetOne', 29, 30, true, false, 'set', 55, 1);
INSERT INTO public.moon VALUES (16, 'PlanetOne', 31, 32, true, false, 'set', 55, 1);
INSERT INTO public.moon VALUES (17, 'PlanetOne', 33, 34, true, false, 'set', 55, 1);
INSERT INTO public.moon VALUES (18, 'PlanetOne', 35, 36, true, false, 'set', 55, 1);
INSERT INTO public.moon VALUES (19, 'PlanetOne', 37, 38, true, false, 'set', 55, 1);
INSERT INTO public.moon VALUES (20, 'PlanetOne', 39, 40, true, false, 'set', 55, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'PlanetOne', 1, 2, true, false, 'set', 55, 1);
INSERT INTO public.planet VALUES (2, 'PlanetOne', 3, 4, true, false, 'set', 55, 1);
INSERT INTO public.planet VALUES (3, 'PlanetOne', 5, 6, true, false, 'set', 55, 1);
INSERT INTO public.planet VALUES (4, 'PlanetOne', 7, 8, true, false, 'set', 55, 1);
INSERT INTO public.planet VALUES (5, 'PlanetOne', 9, 10, true, false, 'set', 55, 1);
INSERT INTO public.planet VALUES (6, 'PlanetOne', 11, 12, true, false, 'set', 55, 1);
INSERT INTO public.planet VALUES (7, 'PlanetOne', 13, 14, true, false, 'set', 55, 1);
INSERT INTO public.planet VALUES (8, 'PlanetOne', 15, 16, true, false, 'set', 55, 1);
INSERT INTO public.planet VALUES (9, 'PlanetOne', 17, 18, true, false, 'set', 55, 1);
INSERT INTO public.planet VALUES (10, 'PlanetOne', 19, 20, true, false, 'set', 55, 1);
INSERT INTO public.planet VALUES (11, 'PlanetOne', 21, 22, true, false, 'set', 55, 1);
INSERT INTO public.planet VALUES (12, 'PlanetOne', 23, 24, true, false, 'set', 55, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'GalaxyOne', 95, 95, true, false, 'test', 6, 1);
INSERT INTO public.star VALUES (2, 'GalaxyOne', 5, 5, true, false, 'test', 6, 1);
INSERT INTO public.star VALUES (3, 'GalaxyOne', 85, 85, true, false, 'test', 6, 1);
INSERT INTO public.star VALUES (4, 'GalaxyOne', 88, 88, true, false, 'test', 6, 1);
INSERT INTO public.star VALUES (5, 'GalaxyOne', 66, 66, true, false, 'test', 6, 1);
INSERT INTO public.star VALUES (6, 'GalaxyOne', 6, 6, true, false, 'test', 6, 1);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: fifthtable fifthtable_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifthtable
    ADD CONSTRAINT fifthtable_pkey PRIMARY KEY (fifthtable_id);


--
-- Name: galaxy galaxy_int_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_int_column_key UNIQUE (int_column);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_int_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_int_column_key UNIQUE (int_column);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: fifthtable name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifthtable
    ADD CONSTRAINT name_unq UNIQUE (int_column);


--
-- Name: planet planet_int_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_int_column_key UNIQUE (int_column);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_int_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_int_column_key UNIQUE (int_column);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

