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
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ ml_line_count; } ;
struct TYPE_8__ {TYPE_1__ b_ml; } ;
struct TYPE_6__ {scalar_t__ lnum; } ;
struct TYPE_7__ {int /*<<< orphan*/  w_set_curswant; TYPE_2__ w_cursor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FDO_HOR ; 
 scalar_t__ KeyTyped ; 
 scalar_t__ NUL ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_4__* curbuf ; 
 TYPE_3__* curwin ; 
 int fdo_flags ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6()
{
#ifdef FEAT_FOLDING
    if ((fdo_flags & FDO_HOR) && KeyTyped)
	foldOpenCursor();
#endif
    FUNC4();
    if (curwin->w_cursor.lnum < curbuf->b_ml.ml_line_count
	    || FUNC2() != NUL)
    {
	FUNC3(&curwin->w_cursor);
	(void)FUNC1(1L, FALSE, 0);
	curwin->w_set_curswant = TRUE;
    }
    else
	FUNC5();
}