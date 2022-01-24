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
struct winsize {long ws_col; long ws_row; long ts_cols; long ts_lines; } ;
struct ttysize {long ws_col; long ws_row; long ts_cols; long ts_lines; } ;
typedef  int /*<<< orphan*/  char_u ;

/* Variables and functions */
 int /*<<< orphan*/  CPO_TSIZE ; 
 long Columns ; 
 int FAIL ; 
 int OK ; 
 long Rows ; 
 int /*<<< orphan*/  TIOCGSIZE ; 
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 long FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (long*,long*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,struct winsize*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  p_cpo ; 
 int read_cmd_fd ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC8()
{
    long	rows = 0;
    long	columns = 0;
    char_u	*p;

    /*
     * For OS/2 use _scrsize().
     */
# ifdef __EMX__
    {
	int s[2];

	_scrsize(s);
	columns = s[0];
	rows = s[1];
    }
# endif

    /*
     * 1. try using an ioctl. It is the most accurate method.
     *
     * Try using TIOCGWINSZ first, some systems that have it also define
     * TIOCGSIZE but don't have a struct ttysize.
     */
# ifdef TIOCGWINSZ
    {
	struct winsize	ws;
	int fd = 1;

	/* When stdout is not a tty, use stdin for the ioctl(). */
	if (!isatty(fd) && isatty(read_cmd_fd))
	    fd = read_cmd_fd;
	if (ioctl(fd, TIOCGWINSZ, &ws) == 0)
	{
	    columns = ws.ws_col;
	    rows = ws.ws_row;
	}
    }
# else /* TIOCGWINSZ */
#  ifdef TIOCGSIZE
    {
	struct ttysize	ts;
	int fd = 1;

	/* When stdout is not a tty, use stdin for the ioctl(). */
	if (!isatty(fd) && isatty(read_cmd_fd))
	    fd = read_cmd_fd;
	if (ioctl(fd, TIOCGSIZE, &ts) == 0)
	{
	    columns = ts.ts_cols;
	    rows = ts.ts_lines;
	}
    }
#  endif /* TIOCGSIZE */
# endif /* TIOCGWINSZ */

    /*
     * 2. get size from environment
     *    When being POSIX compliant ('|' flag in 'cpoptions') this overrules
     *    the ioctl() values!
     */
    if (columns == 0 || rows == 0 || FUNC7(p_cpo, CPO_TSIZE) != NULL)
    {
	if ((p = (char_u *)FUNC2("LINES")))
	    rows = FUNC1((char *)p);
	if ((p = (char_u *)FUNC2("COLUMNS")))
	    columns = FUNC1((char *)p);
    }

#ifdef HAVE_TGETENT
    /*
     * 3. try reading "co" and "li" entries from termcap
     */
    if (columns == 0 || rows == 0)
	getlinecol(&columns, &rows);
#endif

    /*
     * 4. If everything fails, use the old values
     */
    if (columns <= 0 || rows <= 0)
	return FAIL;

    Rows = rows;
    Columns = columns;
    FUNC6();
    return OK;
}