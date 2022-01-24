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
typedef  int u_int ;
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 scalar_t__ ENOENT ; 
 scalar_t__ ENOTDIR ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 scalar_t__ FUNC5 (char*,int) ; 
 int FUNC6 (char*,int,int) ; 
 int FUNC7 (char*,struct stat*) ; 

__attribute__((used)) static int
FUNC8(char *path, int *doopen, int domkdir)
{
	char	   *start,
			   *trv;
	struct stat sbuf;
	u_int		pid;

	/*
	 * To guarantee multiple calls generate unique names even if the file is
	 * not created. 676 different possibilities with 7 or more X's, 26 with 6
	 * or less.
	 */
	static char xtra[2] = "aa";
	int			xcnt = 0;

	FUNC1(path != NULL);
	/* doopen may be NULL */

	pid = FUNC2();

	/* Move to end of path and count trailing X's. */
	for (trv = path; *trv; ++trv)
		if (*trv == 'X')
			xcnt++;
		else
			xcnt = 0;

	/* Use at least one from xtra.  Use 2 if more than 6 X's. */
	if (xcnt > 0)
	{
		*--trv = xtra[0];
		xcnt--;
	}
	if (xcnt > 5)
	{
		*--trv = xtra[1];
		xcnt--;
	}

	/* Set remaining X's to pid digits with 0's to the left. */
	for (; xcnt > 0; xcnt--)
	{
		*--trv = (pid % 10) + '0';
		pid /= 10;
	}

	/* update xtra for next call. */
	if (xtra[0] != 'z')
		xtra[0]++;
	else
	{
		xtra[0] = 'a';
		if (xtra[1] != 'z')
			xtra[1]++;
		else
			xtra[1] = 'a';
	}

	/*
	 * check the target directory; if you have six X's and it doesn't exist
	 * this runs for a *very* long time.
	 */
	for (start = trv + 1;; --trv)
	{
		if (trv <= path)
			break;
		if (*trv == '/')
		{
			int			e;

			*trv = '\0';
			e = FUNC7(path, &sbuf);
			*trv = '/';
			if (e == -1)
				return doopen == NULL && !domkdir;
			if (!FUNC0(sbuf.st_mode))
			{
				errno = ENOTDIR;
				return doopen == NULL && !domkdir;
			}
			break;
		}
	}

	for (;;)
	{
		if (doopen)
		{
			if ((*doopen =
				 FUNC6(path, O_CREAT | O_EXCL | O_RDWR, 0600)) >= 0)
				return 1;
			if (errno != EEXIST)
				return 0;
		}
		else if (domkdir)
		{
			if (FUNC5(path, 0700) >= 0)
				return 1;
			if (errno != EEXIST)
				return 0;
		}
		else if (FUNC4(path, &sbuf))
			return errno == ENOENT ? 1 : 0;

		/* tricky little algorithm for backward compatibility */
		for (trv = start;;)
		{
			if (!*trv)
				return 0;
			if (*trv == 'z')
				*trv++ = 'a';
			else
			{
				if (FUNC3((unsigned char) *trv))
					*trv = 'a';
				else
					++*trv;
				break;
			}
		}
	}
	/* NOTREACHED */
}