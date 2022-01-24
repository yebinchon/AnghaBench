#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ w_redr_status; struct TYPE_4__* w_next; } ;
typedef  TYPE_1__ win_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* firstwin ; 
 scalar_t__ redraw_tabline ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void
FUNC2()
{
    win_T	*wp;

    for (wp = firstwin; wp; wp = wp->w_next)
	if (wp->w_redr_status)
	    FUNC1(wp);
    if (redraw_tabline)
	FUNC0();
}