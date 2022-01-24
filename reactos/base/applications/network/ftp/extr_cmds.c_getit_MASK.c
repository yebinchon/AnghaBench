#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tm {int tm_mon; int tm_year; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct stat {int /*<<< orphan*/  st_mtime; scalar_t__ st_size; } ;

/* Variables and functions */
 scalar_t__ COMPLETE ; 
 int MAXPATHLEN ; 
 int code ; 
 scalar_t__ FUNC0 (char*,char const*) ; 
 scalar_t__ debug ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const**) ; 
 struct tm* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const) ; 
 scalar_t__ FUNC8 (char) ; 
 int /*<<< orphan*/ * line ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ mapflag ; 
 int margc ; 
 char** margv ; 
 scalar_t__ mcase ; 
 scalar_t__ ntflag ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,char const*,char const*,int) ; 
 char* reply_string ; 
 scalar_t__ restart_point ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int*,int*,int*,int*,int*,int*) ; 
 int FUNC14 (char const*,struct stat*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC16 (int /*<<< orphan*/ *) ; 
 int verbose ; 

int FUNC17(int argc, const char *argv[], int restartit, const char *mode)
{
	int loc = 0;
	const char *oldargv1, *oldargv2;

	if (argc == 2) {
		argc++;
		argv[2] = argv[1];
		loc++;
	}
	if (argc < 2) {
		(void) FUNC15(line, " ");
		FUNC11("(remote-file) ");
		(void) FUNC3(stdout);
		(void) FUNC4(&line[FUNC16(line)]);
		FUNC9();
		argc = margc;
		argv = margv;
	}
	if (argc < 2) {
usage:
		FUNC11("usage: %s remote-file [ local-file ]\n", argv[0]);
		(void) FUNC3(stdout);
		code = -1;
		return (0);
	}
	if (argc < 3) {
		(void) FUNC15(line, " ");
		FUNC11("(local-file) ");
		(void) FUNC3(stdout);
		(void) FUNC4(&line[FUNC16(line)]);
		FUNC9();
		argc = margc;
		argv = margv;
	}
	if (argc < 3)
		goto usage;
	oldargv1 = argv[1];
	oldargv2 = argv[2];
	if (!FUNC5(&argv[2])) {
		code = -1;
		return (0);
	}
	if (loc && mcase) {
		const char *tp = argv[1];
        char *tp2, tmpbuf[MAXPATHLEN];

		while (*tp && !FUNC7(*tp)) {
			tp++;
		}
		if (!*tp) {
			tp = argv[2];
			tp2 = tmpbuf;
			while ((*tp2 = *tp)) {
				if (FUNC8(*tp2)) {
					*tp2 = 'a' + *tp2 - 'A';
				}
				tp++;
				tp2++;
			}
			argv[2] = tmpbuf;
		}
	}
	if (loc && ntflag)
		argv[2] = FUNC2(argv[2]);
	if (loc && mapflag)
		argv[2] = FUNC1(argv[2]);
	if (restartit) {
		struct stat stbuf;
		int ret;

		ret = FUNC14(argv[2], &stbuf);
		if (restartit == 1) {
			if (ret < 0) {
				FUNC10(argv[2]);
				return (0);
			}
			restart_point = stbuf.st_size;
		} else {
			if (ret == 0) {
				int overbose;

				overbose = verbose;
				if (debug == 0)
					verbose = -1;
				if (FUNC0("MDTM %s", argv[1]) == COMPLETE) {
					int yy, mo, day, hour, min, sec;
					struct tm *tm;
					verbose = overbose;
					FUNC13(reply_string,
					    "%*s %04d%02d%02d%02d%02d%02d",
					    &yy, &mo, &day, &hour, &min, &sec);
					tm = FUNC6(&stbuf.st_mtime);
					tm->tm_mon++;
					if (tm->tm_year > yy%100)
						return (1);
					else if (tm->tm_year == yy%100) {
						if (tm->tm_mon > mo)
							return (1);
					} else if (tm->tm_mon == mo) {
						if (tm->tm_mday > day)
							return (1);
					} else if (tm->tm_mday == day) {
						if (tm->tm_hour > hour)
							return (1);
					} else if (tm->tm_hour == hour) {
						if (tm->tm_min > min)
							return (1);
					} else if (tm->tm_min == min) {
						if (tm->tm_sec > sec)
							return (1);
					}
				} else {
					FUNC11("%s\n", reply_string);
					(void) FUNC3(stdout);
					verbose = overbose;
					return (0);
				}
			}
		}
	}

	FUNC12("RETR", argv[2], argv[1], mode,
	    argv[1] != oldargv1 || argv[2] != oldargv2);
	restart_point = 0;
	return (0);
}