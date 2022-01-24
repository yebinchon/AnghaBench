#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
struct dirent {char* d_name; } ;
struct TYPE_7__ {int /*<<< orphan*/  TZname; int /*<<< orphan*/  state; } ;
struct TYPE_6__ {size_t depth; char** dirname; int baselen; TYPE_2__ tz; int /*<<< orphan*/ * dirdesc; } ;
typedef  TYPE_1__ pg_tzenum ;
typedef  TYPE_2__ pg_tz ;
typedef  int /*<<< orphan*/  fullname ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MAXPGPATH ; 
 int MAX_TZDIR_DEPTH ; 
 struct dirent* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC12 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC14 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

pg_tz *
FUNC15(pg_tzenum *dir)
{
	while (dir->depth >= 0)
	{
		struct dirent *direntry;
		char		fullname[MAXPGPATH * 2];
		struct stat statbuf;

		direntry = FUNC2(dir->dirdesc[dir->depth], dir->dirname[dir->depth]);

		if (!direntry)
		{
			/* End of this directory */
			FUNC1(dir->dirdesc[dir->depth]);
			FUNC8(dir->dirname[dir->depth]);
			dir->depth--;
			continue;
		}

		if (direntry->d_name[0] == '.')
			continue;

		FUNC11(fullname, sizeof(fullname), "%s/%s",
				 dir->dirname[dir->depth], direntry->d_name);
		if (FUNC12(fullname, &statbuf) != 0)
			FUNC4(ERROR,
					(FUNC5(),
					 FUNC6("could not stat \"%s\": %m", fullname)));

		if (FUNC3(statbuf.st_mode))
		{
			/* Step into the subdirectory */
			if (dir->depth >= MAX_TZDIR_DEPTH - 1)
				FUNC4(ERROR,
						(FUNC7("timezone directory stack overflow")));
			dir->depth++;
			dir->dirname[dir->depth] = FUNC10(fullname);
			dir->dirdesc[dir->depth] = FUNC0(fullname);
			if (!dir->dirdesc[dir->depth])
				FUNC4(ERROR,
						(FUNC5(),
						 FUNC6("could not open directory \"%s\": %m",
								fullname)));

			/* Start over reading in the new directory */
			continue;
		}

		/*
		 * Load this timezone using tzload() not pg_tzset(), so we don't fill
		 * the cache.  Also, don't ask for the canonical spelling: we already
		 * know it, and pg_open_tzfile's way of finding it out is pretty
		 * inefficient.
		 */
		if (FUNC14(fullname + dir->baselen, NULL, &dir->tz.state, true) != 0)
		{
			/* Zone could not be loaded, ignore it */
			continue;
		}

		if (!FUNC9(&dir->tz))
		{
			/* Ignore leap-second zones */
			continue;
		}

		/* OK, return the canonical zone name spelling. */
		FUNC13(dir->tz.TZname, fullname + dir->baselen,
				sizeof(dir->tz.TZname));

		/* Timezone loaded OK. */
		return &dir->tz;
	}

	/* Nothing more found */
	return NULL;
}