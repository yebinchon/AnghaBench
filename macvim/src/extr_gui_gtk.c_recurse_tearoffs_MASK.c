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
struct TYPE_3__ {char* name; struct TYPE_3__* children; int /*<<< orphan*/ * tearoff_handle; int /*<<< orphan*/ * submenu_id; struct TYPE_3__* next; } ;
typedef  TYPE_1__ vimmenu_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(vimmenu_T *menu, int val)
{
    for (; menu != NULL; menu = menu->next)
    {
	if (menu->submenu_id != NULL && menu->tearoff_handle != NULL
		&& menu->name[0] != ']' && !FUNC2(menu->name))
	{
	    if (val)
		FUNC1(menu->tearoff_handle);
	    else
		FUNC0(menu->tearoff_handle);
	}
	FUNC3(menu->children, val);
    }
}