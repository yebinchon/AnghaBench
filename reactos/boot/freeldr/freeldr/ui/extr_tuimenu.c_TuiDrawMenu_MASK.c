#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ ULONG ;
struct TYPE_7__ {int /*<<< orphan*/  (* DrawStatusText ) (char*) ;} ;
struct TYPE_6__ {scalar_t__ MenuItemCount; scalar_t__ ShowBootOptions; } ;
typedef  TYPE_1__* PUI_MENU_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_2__ UiVtbl ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

VOID
FUNC6(PUI_MENU_INFO MenuInfo)
{
    ULONG i;

    //
    // Draw the backdrop
    //
    FUNC3();

    //
    // Update the status bar
    //
    UiVtbl.DrawStatusText("Use \x18 and \x19 to select, then press ENTER.");

    //
    // Draw the menu box
    //
    FUNC1(MenuInfo);

    //
    // Draw each line of the menu
    //
    for (i = 0; i < MenuInfo->MenuItemCount; i++)
    {
        FUNC2(MenuInfo, i);
    }

    /* Display the boot options if needed */
    if (MenuInfo->ShowBootOptions)
    {
        FUNC0();
    }

    FUNC4();
}