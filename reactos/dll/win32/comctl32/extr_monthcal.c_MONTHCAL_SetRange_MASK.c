#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int rangeValid; void* minDate; void* maxDate; int /*<<< orphan*/  todaysDate; } ;
typedef  void* SYSTEMTIME ;
typedef  int SHORT ;
typedef  TYPE_1__ MONTHCAL_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  FILETIME ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int GDTR_MAX ; 
 int GDTR_MIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (void**) ; 
 int /*<<< orphan*/  FUNC4 (void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,void**) ; 
 int /*<<< orphan*/  TRUE ; 
 void* st_null ; 

__attribute__((used)) static LRESULT
FUNC6(MONTHCAL_INFO *infoPtr, SHORT limits, SYSTEMTIME *range)
{
    FILETIME ft_min, ft_max;

    FUNC5("%x %p\n", limits, range);

    if ((limits & GDTR_MIN && !FUNC2(&range[0])) ||
        (limits & GDTR_MAX && !FUNC2(&range[1])))
        return FALSE;

    infoPtr->rangeValid = 0;
    infoPtr->minDate = infoPtr->maxDate = st_null;

    if (limits & GDTR_MIN)
    {
        if (!FUNC3(&range[0]))
            FUNC1(&infoPtr->todaysDate, &range[0]);

        infoPtr->minDate = range[0];
        infoPtr->rangeValid |= GDTR_MIN;
    }
    if (limits & GDTR_MAX)
    {
        if (!FUNC3(&range[1]))
            FUNC1(&infoPtr->todaysDate, &range[1]);

        infoPtr->maxDate = range[1];
        infoPtr->rangeValid |= GDTR_MAX;
    }

    /* Only one limit set - we are done */
    if ((infoPtr->rangeValid & (GDTR_MIN | GDTR_MAX)) != (GDTR_MIN | GDTR_MAX))
        return TRUE;

    FUNC4(&infoPtr->maxDate, &ft_max);
    FUNC4(&infoPtr->minDate, &ft_min);

    if (FUNC0(&ft_min, &ft_max) >= 0)
    {
        if ((limits & (GDTR_MIN | GDTR_MAX)) == (GDTR_MIN | GDTR_MAX))
        {
            /* Native swaps limits only when both limits are being set. */
            SYSTEMTIME st_tmp = infoPtr->minDate;
            infoPtr->minDate  = infoPtr->maxDate;
            infoPtr->maxDate  = st_tmp;
        }
        else
        {
            /* reset the other limit */
            if (limits & GDTR_MIN) infoPtr->maxDate = st_null;
            if (limits & GDTR_MAX) infoPtr->minDate = st_null;
            infoPtr->rangeValid &= limits & GDTR_MIN ? ~GDTR_MAX : ~GDTR_MIN;
        }
    }

    return TRUE;
}