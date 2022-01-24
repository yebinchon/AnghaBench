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
typedef  int /*<<< orphan*/  VOID ;
typedef  int ULONG ;
struct TYPE_3__ {int Left; int Right; scalar_t__ MenuTimeRemaining; int MenuItemCount; scalar_t__ Top; int /*<<< orphan*/ ** MenuItemList; scalar_t__ Bottom; } ;
typedef  TYPE_1__* PUI_MENU_INFO ;
typedef  int /*<<< orphan*/  MenuLineText ;
typedef  char CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  D_HORZ ; 
 int /*<<< orphan*/  D_VERT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ UiCenterMenu ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UiMenuBgColor ; 
 scalar_t__ UiMenuBox ; 
 int /*<<< orphan*/  UiMenuFgColor ; 
 char* UiTimeText ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*) ; 

VOID
FUNC7(PUI_MENU_INFO MenuInfo)
{
    CHAR MenuLineText[80], TempString[80];
    ULONG i;

    //
    // Draw the menu box if requested
    //
    if (UiMenuBox)
    {
        FUNC1(MenuInfo->Left,
                  MenuInfo->Top,
                  MenuInfo->Right,
                  MenuInfo->Bottom,
                  D_VERT,
                  D_HORZ,
                  FALSE,        // Filled
                  TRUE,         // Shadow
                  FUNC0(UiMenuFgColor, UiMenuBgColor));
    }

    //
    // If there is a timeout draw the time remaining
    //
    if (MenuInfo->MenuTimeRemaining >= 0)
    {
        //
        // Copy the integral time text string, and remove the last 2 chars
        //
        FUNC5(TempString, UiTimeText);
        i = (ULONG)FUNC6(TempString);
        TempString[i - 2] = 0;

        //
        // Display the first part of the string and the remaining time
        //
        FUNC5(MenuLineText, TempString);
        FUNC3(MenuInfo->MenuTimeRemaining, TempString, 10);
        FUNC4(MenuLineText, TempString);

        //
        // Add the last 2 chars
        //
        FUNC4(MenuLineText, &UiTimeText[i - 2]);

        //
        // Check if this is a centered menu
        //
        if (UiCenterMenu)
        {
            //
            // Display it in the center of the menu
            //
            FUNC2(MenuInfo->Right - (ULONG)FUNC6(MenuLineText) - 1,
                       MenuInfo->Bottom,
                       MenuLineText,
                       FUNC0(UiMenuFgColor, UiMenuBgColor));
        }
        else
        {
            //
            // Display under the menu directly
            //
            FUNC2(0,
                       MenuInfo->Bottom + 4,
                       MenuLineText,
                       FUNC0(UiMenuFgColor, UiMenuBgColor));
        }
    }
    else
    {
        //
        // Erase the timeout string with spaces, and 0-terminate for sure
        //
        for (i=0; i<sizeof(MenuLineText)-1; i++)
        {
            MenuLineText[i] = ' ';
        }
        MenuLineText[sizeof(MenuLineText)-1] = 0;

        //
        // Draw this "empty" string to erase
        //
        if (UiCenterMenu)
        {
            FUNC2(MenuInfo->Right - (ULONG)FUNC6(MenuLineText) - 1,
                       MenuInfo->Bottom,
                       MenuLineText,
                       FUNC0(UiMenuFgColor, UiMenuBgColor));
        }
        else
        {
            FUNC2(0,
                       MenuInfo->Bottom + 4,
                       MenuLineText,
                       FUNC0(UiMenuFgColor, UiMenuBgColor));
        }
    }

    //
    // Loop each item
    //
    for (i = 0; i < MenuInfo->MenuItemCount; i++)
    {
        //
        // Check if it's a separator
        //
        if (MenuInfo->MenuItemList[i] == NULL)
        {
            //
            // Draw the separator line
            //
            FUNC2(MenuInfo->Left,
                       MenuInfo->Top + i + 1,
                       "\xC7",
                       FUNC0(UiMenuFgColor, UiMenuBgColor));
            FUNC2(MenuInfo->Right,
                       MenuInfo->Top + i + 1,
                       "\xB6",
                       FUNC0(UiMenuFgColor, UiMenuBgColor));
        }
    }
}