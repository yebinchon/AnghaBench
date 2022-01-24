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
struct TYPE_7__ {int /*<<< orphan*/  (* DrawText ) (int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {char* MenuHeader; char* MenuFooter; scalar_t__ MenuItemCount; scalar_t__ ShowBootOptions; scalar_t__ Bottom; scalar_t__ Top; } ;
typedef  TYPE_1__* PUI_MENU_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  UiMenuBgColor ; 
 int /*<<< orphan*/  UiMenuFgColor ; 
 scalar_t__ UiScreenHeight ; 
 TYPE_2__ UiVtbl ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ ) ; 

VOID
FUNC10(PUI_MENU_INFO MenuInfo)
{
    ULONG i;

    //
    // Draw the backdrop
    //
    FUNC4();

    //
    // No GUI status bar text, just minimal text. Show the menu header.
    //
    if (MenuInfo->MenuHeader)
    {
        UiVtbl.DrawText(0,
                        MenuInfo->Top - 2,
                        MenuInfo->MenuHeader,
                        FUNC0(UiMenuFgColor, UiMenuBgColor));
    }

    //
    // Now tell the user how to choose
    //
    UiVtbl.DrawText(0,
                    MenuInfo->Bottom + 1,
                    "Use \x18 and \x19 to move the highlight to your choice.",
                    FUNC0(UiMenuFgColor, UiMenuBgColor));
    UiVtbl.DrawText(0,
                    MenuInfo->Bottom + 2,
                    "Press ENTER to choose.",
                    FUNC0(UiMenuFgColor, UiMenuBgColor));

    //
    // And show the menu footer
    //
    if (MenuInfo->MenuFooter)
    {
        UiVtbl.DrawText(0,
                        UiScreenHeight - 4,
                        MenuInfo->MenuFooter,
                        FUNC0(UiMenuFgColor, UiMenuBgColor));
    }

    //
    // Draw the menu box
    //
    FUNC2(MenuInfo);

    //
    // Draw each line of the menu
    //
    for (i = 0; i < MenuInfo->MenuItemCount; i++)
    {
        FUNC3(MenuInfo, i);
    }

    //
    // Display the boot options if needed
    //
    if (MenuInfo->ShowBootOptions)
    {
        FUNC1();
    }

    FUNC5();
}