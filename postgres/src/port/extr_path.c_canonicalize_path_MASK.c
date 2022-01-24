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

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void
FUNC7(char *path)
{
	char	   *p,
			   *to_p;
	char	   *spath;
	bool		was_sep = false;
	int			pending_strips;

#ifdef WIN32

	/*
	 * The Windows command processor will accept suitably quoted paths with
	 * forward slashes, but barfs badly with mixed forward and back slashes.
	 */
	for (p = path; *p; p++)
	{
		if (*p == '\\')
			*p = '/';
	}

	/*
	 * In Win32, if you do: prog.exe "a b" "\c\d\" the system will pass \c\d"
	 * as argv[2], so trim off trailing quote.
	 */
	if (p > path && *(p - 1) == '"')
		*(p - 1) = '/';
#endif

	/*
	 * Removing the trailing slash on a path means we never get ugly double
	 * trailing slashes. Also, Win32 can't stat() a directory with a trailing
	 * slash. Don't remove a leading slash, though.
	 */
	FUNC6(path);

	/*
	 * Remove duplicate adjacent separators
	 */
	p = path;
#ifdef WIN32
	/* Don't remove leading double-slash on Win32 */
	if (*p)
		p++;
#endif
	to_p = p;
	for (; *p; p++, to_p++)
	{
		/* Handle many adjacent slashes, like "/a///b" */
		while (*p == '/' && was_sep)
			p++;
		if (to_p != p)
			*to_p = *p;
		was_sep = (*p == '/');
	}
	*to_p = '\0';

	/*
	 * Remove any trailing uses of "." and process ".." ourselves
	 *
	 * Note that "/../.." should reduce to just "/", while "../.." has to be
	 * kept as-is.  In the latter case we put back mistakenly trimmed ".."
	 * components below.  Also note that we want a Windows drive spec to be
	 * visible to trim_directory(), but it's not part of the logic that's
	 * looking at the name components; hence distinction between path and
	 * spath.
	 */
	spath = FUNC0(path);
	pending_strips = 0;
	for (;;)
	{
		int			len = FUNC4(spath);

		if (len >= 2 && FUNC2(spath + len - 2, "/.") == 0)
			FUNC5(path);
		else if (FUNC2(spath, ".") == 0)
		{
			/* Want to leave "." alone, but "./.." has to become ".." */
			if (pending_strips > 0)
				*spath = '\0';
			break;
		}
		else if ((len >= 3 && FUNC2(spath + len - 3, "/..") == 0) ||
				 FUNC2(spath, "..") == 0)
		{
			FUNC5(path);
			pending_strips++;
		}
		else if (pending_strips > 0 && *spath != '\0')
		{
			/* trim a regular directory name canceled by ".." */
			FUNC5(path);
			pending_strips--;
			/* foo/.. should become ".", not empty */
			if (*spath == '\0')
				FUNC3(spath, ".");
		}
		else
			break;
	}

	if (pending_strips > 0)
	{
		/*
		 * We could only get here if path is now totally empty (other than a
		 * possible drive specifier on Windows). We have to put back one or
		 * more ".."'s that we took off.
		 */
		while (--pending_strips > 0)
			FUNC1(path, "../");
		FUNC1(path, "..");
	}
}