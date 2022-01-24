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
struct tztry {int dummy; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 scalar_t__ MAXPGPATH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TZ_STRLEN_MAX ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 char** FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 int FUNC4 (char*,struct tztry*) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,char*,char*) ; 
 scalar_t__ FUNC6 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,scalar_t__) ; 
 int FUNC10 (char*) ; 
 int FUNC11 (char*) ; 

__attribute__((used)) static void
FUNC12(char *tzdir, char *tzdirsub, struct tztry *tt,
						 int *bestscore, char *bestzonename)
{
	int			tzdir_orig_len = FUNC10(tzdir);
	char	  **names;
	char	  **namep;

	names = FUNC2(tzdir);
	if (!names)
		return;

	for (namep = names; *namep; namep++)
	{
		char	   *name = *namep;
		struct stat statbuf;

		/* Ignore . and .., plus any other "hidden" files */
		if (name[0] == '.')
			continue;

		FUNC5(tzdir + tzdir_orig_len, MAXPGPATH - tzdir_orig_len,
				 "/%s", name);

		if (FUNC6(tzdir, &statbuf) != 0)
		{
#ifdef DEBUG_IDENTIFY_TIMEZONE
			fprintf(stderr, "could not stat \"%s\": %s\n",
					tzdir, strerror(errno));
#endif
			tzdir[tzdir_orig_len] = '\0';
			continue;
		}

		if (FUNC0(statbuf.st_mode))
		{
			/* Recurse into subdirectory */
			FUNC12(tzdir, tzdirsub, tt,
									 bestscore, bestzonename);
		}
		else
		{
			/* Load and test this file */
			int			score = FUNC4(tzdirsub, tt);

			if (score > *bestscore)
			{
				*bestscore = score;
				FUNC9(bestzonename, tzdirsub, TZ_STRLEN_MAX + 1);
			}
			else if (score == *bestscore)
			{
				/* Consider how to break a tie */
				int			namepref = (FUNC11(tzdirsub) -
										FUNC11(bestzonename));

				if (namepref > 0 ||
					(namepref == 0 &&
					 (FUNC10(tzdirsub) < FUNC10(bestzonename) ||
					  (FUNC10(tzdirsub) == FUNC10(bestzonename) &&
					   FUNC7(tzdirsub, bestzonename) < 0))))
					FUNC9(bestzonename, tzdirsub, TZ_STRLEN_MAX + 1);
			}
		}

		/* Restore tzdir */
		tzdir[tzdir_orig_len] = '\0';
	}

	FUNC3(names);
}