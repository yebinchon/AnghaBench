#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ char1; int char2; int result; } ;
typedef  TYPE_1__ digr_T ;
struct TYPE_6__ {int ga_len; scalar_t__ ga_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLEAR ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ NUL ; 
 TYPE_1__* digraphdefault ; 
 int FUNC0 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  got_int ; 
 scalar_t__ has_mbyte ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  must_redraw ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_2__ user_digraphs ; 

void
FUNC4()
{
    int		i;
    digr_T	*dp;

    FUNC1('\n');

    dp = digraphdefault;
    for (i = 0; dp->char1 != NUL && !got_int; ++i)
    {
#if defined(USE_UNICODE_DIGRAPHS) && defined(FEAT_MBYTE)
	digr_T tmp;

	/* May need to convert the result to 'encoding'. */
	tmp.char1 = dp->char1;
	tmp.char2 = dp->char2;
	tmp.result = getexactdigraph(tmp.char1, tmp.char2, FALSE);
	if (tmp.result != 0 && tmp.result != tmp.char2
					  && (has_mbyte || tmp.result <= 255))
	    printdigraph(&tmp);
#else

	if (FUNC0(dp->char1, dp->char2, FALSE) == dp->result
# ifdef FEAT_MBYTE
		&& (has_mbyte || dp->result <= 255)
# endif
		)
	    FUNC2(dp);
#endif
	++dp;
	FUNC3();
    }

    dp = (digr_T *)user_digraphs.ga_data;
    for (i = 0; i < user_digraphs.ga_len && !got_int; ++i)
    {
	FUNC2(dp);
	FUNC3();
	++dp;
    }
    must_redraw = CLEAR;    /* clear screen, because some digraphs may be
			       wrong, in which case we messed up ScreenLines */
}