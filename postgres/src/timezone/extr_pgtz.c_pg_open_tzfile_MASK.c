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
typedef  int /*<<< orphan*/  fullname ;

/* Variables and functions */
 int MAXPGPATH ; 
 int O_RDONLY ; 
 int PG_BINARY ; 
 int TZ_STRLEN_MAX ; 
 int FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int,char*,int) ; 
 char* FUNC3 (char const*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int FUNC6 (char const*) ; 

int
FUNC7(const char *name, char *canonname)
{
	const char *fname;
	char		fullname[MAXPGPATH];
	int			fullnamelen;
	int			orignamelen;

	/* Initialize fullname with base name of tzdata directory */
	FUNC5(fullname, FUNC1(), sizeof(fullname));
	orignamelen = fullnamelen = FUNC6(fullname);

	if (fullnamelen + 1 + FUNC6(name) >= MAXPGPATH)
		return -1;				/* not gonna fit */

	/*
	 * If the caller doesn't need the canonical spelling, first just try to
	 * open the name as-is.  This can be expected to succeed if the given name
	 * is already case-correct, or if the filesystem is case-insensitive; and
	 * we don't need to distinguish those situations if we aren't tasked with
	 * reporting the canonical spelling.
	 */
	if (canonname == NULL)
	{
		int			result;

		fullname[fullnamelen] = '/';
		/* test above ensured this will fit: */
		FUNC4(fullname + fullnamelen + 1, name);
		result = FUNC0(fullname, O_RDONLY | PG_BINARY, 0);
		if (result >= 0)
			return result;
		/* If that didn't work, fall through to do it the hard way */
		fullname[fullnamelen] = '\0';
	}

	/*
	 * Loop to split the given name into directory levels; for each level,
	 * search using scan_directory_ci().
	 */
	fname = name;
	for (;;)
	{
		const char *slashptr;
		int			fnamelen;

		slashptr = FUNC3(fname, '/');
		if (slashptr)
			fnamelen = slashptr - fname;
		else
			fnamelen = FUNC6(fname);
		if (!FUNC2(fullname, fname, fnamelen,
							   fullname + fullnamelen + 1,
							   MAXPGPATH - fullnamelen - 1))
			return -1;
		fullname[fullnamelen++] = '/';
		fullnamelen += FUNC6(fullname + fullnamelen);
		if (slashptr)
			fname = slashptr + 1;
		else
			break;
	}

	if (canonname)
		FUNC5(canonname, fullname + orignamelen + 1, TZ_STRLEN_MAX + 1);

	return FUNC0(fullname, O_RDONLY | PG_BINARY, 0);
}