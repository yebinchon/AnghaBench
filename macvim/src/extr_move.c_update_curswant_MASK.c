#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ w_set_curswant; int /*<<< orphan*/  w_virtcol; int /*<<< orphan*/  w_curswant; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 TYPE_1__* curwin ; 
 int /*<<< orphan*/  FUNC0 () ; 

void
FUNC1()
{
    if (curwin->w_set_curswant)
    {
	FUNC0();
	curwin->w_curswant = curwin->w_virtcol;
	curwin->w_set_curswant = FALSE;
    }
}