#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ Window ;
struct TYPE_4__ {TYPE_1__* mainwin; } ;
struct TYPE_3__ {int /*<<< orphan*/ * window; } ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int FAIL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int OK ; 
 TYPE_2__ gui ; 

int
FUNC2(Window *win, Display **dis)
{
    if (gui.mainwin != NULL && gui.mainwin->window != NULL)
    {
	*dis = FUNC0(gui.mainwin->window);
	*win = FUNC1(gui.mainwin->window);
	return OK;
    }

    *dis = NULL;
    *win = 0;
    return FAIL;
}