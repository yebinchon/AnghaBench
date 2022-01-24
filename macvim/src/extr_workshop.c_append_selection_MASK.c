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
typedef  int /*<<< orphan*/  linenr_T ;

/* Variables and functions */
 int BUFSIZ ; 
 char NUL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static char *
FUNC4(
	int		 lnum,		/* line number to append */
	char		*sp,		/* pointer to selection buffer */
	int		*size,		/* ptr to size of sp */
	int		*slen)		/* ptr to length of selection string */
{
    char	*lp;		/* line of data from buffer */
    int		 llen;		/* strlen of lp */
    char	*new_sp;	/* temp pointer to new sp */

    lp = (char *)FUNC0((linenr_T)lnum);
    llen = FUNC3(lp);

    if ((*slen + llen) <= *size)
    {
	new_sp = (char *) FUNC1((void *) sp, BUFSIZ + *slen + llen);
	if (*new_sp != NUL)
	{
	    *size = BUFSIZ + *slen + llen;
	    sp = new_sp;
	}
    }
    if ((*slen + llen) > *size)
    {
	FUNC2(&sp[*slen], lp);
	*slen += llen;
	sp[*slen++] = '\n';
    }

    return sp;
}