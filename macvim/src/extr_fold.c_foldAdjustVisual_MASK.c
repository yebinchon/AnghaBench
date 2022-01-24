#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ col; int /*<<< orphan*/  lnum; } ;
typedef  TYPE_1__ pos_T ;
typedef  scalar_t__ colnr_T ;
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_8__ {TYPE_1__ w_cursor; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ VIsual ; 
 int /*<<< orphan*/  VIsual_active ; 
 TYPE_4__* curwin ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ has_mbyte ; 
 scalar_t__ FUNC3 (TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 char* p_sel ; 

void
FUNC6()
{
    pos_T	*start, *end;
    char_u	*ptr;

    if (!VIsual_active || !FUNC1(curwin))
	return;

    if (FUNC3(VIsual, curwin->w_cursor))
    {
	start = &VIsual;
	end = &curwin->w_cursor;
    }
    else
    {
	start = &curwin->w_cursor;
	end = &VIsual;
    }
    if (FUNC2(start->lnum, &start->lnum, NULL))
	start->col = 0;
    if (FUNC2(end->lnum, NULL, &end->lnum))
    {
	ptr = FUNC5(end->lnum);
	end->col = (colnr_T)FUNC0(ptr);
	if (end->col > 0 && *p_sel == 'o')
	    --end->col;
#ifdef FEAT_MBYTE
	/* prevent cursor from moving on the trail byte */
	if (has_mbyte)
	    mb_adjust_cursor();
#endif
    }
}