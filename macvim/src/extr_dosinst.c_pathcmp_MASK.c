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
 scalar_t__ FUNC0 (char) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2(char *p, int plen, char *q, int qlen)
{
    int		i;

    if (plen < 0)
	plen = FUNC1(p);
    if (qlen < 0)
	qlen = FUNC1(q);
    for (i = 0; ; ++i)
    {
	/* End of "p": check if "q" also ends or just has a slash. */
	if (i == plen)
	{
	    if (i == qlen)  /* match */
		return 0;
	    if (i == qlen - 1 && (q[i] == '\\' || q[i] == '/'))
		return 0;   /* match with trailing slash */
	    return 1;	    /* no match */
	}

	/* End of "q": check if "p" also ends or just has a slash. */
	if (i == qlen)
	{
	    if (i == plen)  /* match */
		return 0;
	    if (i == plen - 1 && (p[i] == '\\' || p[i] == '/'))
		return 0;   /* match with trailing slash */
	    return 1;	    /* no match */
	}

	if (!(FUNC0(p[i]) == FUNC0(q[i])
		|| ((p[i] == '/' || p[i] == '\\')
		    && (q[i] == '/' || q[i] == '\\'))))
	    return 1;	    /* no match */
    }
    /*NOTREACHED*/
}