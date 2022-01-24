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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ENOENT ; 
 int ENOTSUP ; 
 int EOF ; 
 int EPERM ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 char* directory ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char const*,char const*) ; 
 scalar_t__ FUNC8 (char const*) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ *) ; 
 char* FUNC12 (char const*,char const*) ; 
 scalar_t__ FUNC13 (char const*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC14 (int) ; 
 scalar_t__ FUNC15 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 

__attribute__((used)) static void
FUNC17(char const *fromfield, char const *tofield, bool staysymlink)
{
	bool		todirs_made = false;
	int			link_errno;

	/*
	 * We get to be careful here since there's a fair chance of root running
	 * us.
	 */
	if (FUNC8(fromfield))
	{
		FUNC4(stderr, FUNC0("%s: link from %s/%s failed: %s\n"),
				progname, directory, fromfield, FUNC14(EPERM));
		FUNC2(EXIT_FAILURE);
	}
	if (staysymlink)
		staysymlink = FUNC9(tofield);
	if (FUNC13(tofield) == 0)
		todirs_made = true;
	else if (errno != ENOENT)
	{
		char const *e = FUNC14(errno);

		FUNC4(stderr, FUNC0("%s: Can't remove %s/%s: %s\n"),
				progname, directory, tofield, e);
		FUNC2(EXIT_FAILURE);
	}
	link_errno = staysymlink ? ENOTSUP : FUNC7(fromfield, tofield);
	if (link_errno == ENOENT && !todirs_made)
	{
		FUNC10(tofield, true);
		todirs_made = true;
		link_errno = FUNC7(fromfield, tofield);
	}
	if (link_errno != 0)
	{
#ifdef HAVE_SYMLINK
		bool		absolute = *fromfield == '/';
		char	   *linkalloc = absolute ? NULL : relname(fromfield, tofield);
		char const *contents = absolute ? fromfield : linkalloc;
		int			symlink_errno = symlink(contents, tofield) == 0 ? 0 : errno;

		if (!todirs_made
			&& (symlink_errno == ENOENT || symlink_errno == ENOTSUP))
		{
			mkdirs(tofield, true);
			if (symlink_errno == ENOENT)
				symlink_errno = symlink(contents, tofield) == 0 ? 0 : errno;
		}
		free(linkalloc);
		if (symlink_errno == 0)
		{
			if (link_errno != ENOTSUP)
				warning(_("symbolic link used because hard link failed: %s"),
						strerror(link_errno));
		}
		else
#endif							/* HAVE_SYMLINK */
		{
			FILE	   *fp,
					   *tp;
			int			c;

			fp = FUNC3(fromfield, "rb");
			if (!fp)
			{
				char const *e = FUNC14(errno);

				FUNC4(stderr, FUNC0("%s: Can't read %s/%s: %s\n"),
						progname, directory, fromfield, e);
				FUNC2(EXIT_FAILURE);
			}
			tp = FUNC3(tofield, "wb");
			if (!tp)
			{
				char const *e = FUNC14(errno);

				FUNC4(stderr, FUNC0("%s: Can't create %s/%s: %s\n"),
						progname, directory, tofield, e);
				FUNC2(EXIT_FAILURE);
			}
			while ((c = FUNC6(fp)) != EOF)
				FUNC11(c, tp);
			FUNC1(fp, directory, fromfield);
			FUNC1(tp, directory, tofield);
			if (link_errno != ENOTSUP)
				FUNC16(FUNC0("copy used because hard link failed: %s"),
						FUNC14(link_errno));
#ifdef HAVE_SYMLINK
			else if (symlink_errno != ENOTSUP)
				warning(_("copy used because symbolic link failed: %s"),
						strerror(symlink_errno));
#endif
		}
	}
}