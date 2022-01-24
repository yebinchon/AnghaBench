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
struct passwd {int /*<<< orphan*/  pw_dir; } ;
typedef  int /*<<< orphan*/  home ;

/* Variables and functions */
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct passwd* FUNC2 (char*) ; 
 char* FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char*) ; 

void
FUNC6(char **filename)
{
	if (!filename || !(*filename))
		return;

	/*
	 * WIN32 doesn't use tilde expansion for file names. Also, it uses tilde
	 * for short versions of long file names, though the tilde is usually
	 * toward the end, not at the beginning.
	 */
#ifndef WIN32

	/* try tilde expansion */
	if (**filename == '~')
	{
		char	   *fn;
		char		oldp,
				   *p;
		struct passwd *pw;
		char		home[MAXPGPATH];

		fn = *filename;
		*home = '\0';

		p = fn + 1;
		while (*p != '/' && *p != '\0')
			p++;

		oldp = *p;
		*p = '\0';

		if (*(fn + 1) == '\0')
			FUNC1(home);	/* ~ or ~/ only */
		else if ((pw = FUNC2(fn + 1)) != NULL)
			FUNC4(home, pw->pw_dir, sizeof(home));	/* ~user */

		*p = oldp;
		if (FUNC5(home) != 0)
		{
			char	   *newfn;

			newfn = FUNC3("%s%s", home, p);
			FUNC0(fn);
			*filename = newfn;
		}
	}
#endif

	return;
}