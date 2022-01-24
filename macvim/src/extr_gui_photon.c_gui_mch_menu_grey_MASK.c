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
struct TYPE_3__ {int /*<<< orphan*/ * id; } ;
typedef  TYPE_1__ vimmenu_T ;

/* Variables and functions */
 int /*<<< orphan*/  PtMenu ; 
 int /*<<< orphan*/  PtMenuButton ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long,long) ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Pt_ARG_FLAGS ; 
 long Pt_BLOCKED ; 
 long Pt_FALSE ; 
 long Pt_GHOST ; 
 long Pt_HIGHLIGHTED ; 
 long Pt_SELECTABLE ; 
 long Pt_TRUE ; 

void
FUNC4(vimmenu_T *menu, int grey)
{
    long    flags, mask, fields;

    if (menu->id == NULL)
	return;

    flags = FUNC1(menu->id);
    if (FUNC2(menu->id, PtMenuButton) &&
	    FUNC2(FUNC3(menu->id), PtMenu))
    {
	fields = Pt_FALSE;
	mask = Pt_SELECTABLE | Pt_HIGHLIGHTED;
    }
    else
    {
	fields = Pt_TRUE;
	mask = Pt_BLOCKED | Pt_GHOST;
    }

    if (! grey)
	fields = ~fields;

    FUNC0(menu->id, Pt_ARG_FLAGS, fields,
	    mask);
}