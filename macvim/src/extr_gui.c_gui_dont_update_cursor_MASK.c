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
struct TYPE_2__ {scalar_t__ in_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  can_update_cursor ; 
 TYPE_1__ gui ; 
 int /*<<< orphan*/  FUNC0 () ; 

void
FUNC1()
{
    if (gui.in_use)
    {
	/* Undraw the cursor now, we probably can't do it after the change. */
	FUNC0();
	can_update_cursor = FALSE;
    }
}