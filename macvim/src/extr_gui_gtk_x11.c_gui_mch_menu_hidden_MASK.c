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
struct TYPE_3__ {scalar_t__ id; } ;
typedef  TYPE_1__ vimmenu_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(vimmenu_T *menu, int hidden)
{
    if (menu->id == 0)
	return;

    if (hidden)
    {
	if (FUNC0(menu->id))
	{
	    FUNC1(menu->id);
	    FUNC3();
	}
    }
    else
    {
	if (!FUNC0(menu->id))
	{
	    FUNC2(menu->id);
	    FUNC3();
	}
    }
}