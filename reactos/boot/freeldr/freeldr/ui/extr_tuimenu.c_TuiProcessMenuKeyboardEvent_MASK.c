#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ (* UiMenuKeyPressFilterCallback ) (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ;
typedef  scalar_t__ ULONG ;
struct TYPE_8__ {int /*<<< orphan*/  (* DrawMenu ) (TYPE_1__*) ;} ;
struct TYPE_7__ {int MenuTimeRemaining; scalar_t__ SelectedMenuItem; scalar_t__ MenuItemCount; int /*<<< orphan*/ ** MenuItemList; int /*<<< orphan*/  Context; } ;
typedef  TYPE_1__* PUI_MENU_INFO ;

/* Variables and functions */
 scalar_t__ KEY_DOWN ; 
 scalar_t__ KEY_END ; 
 scalar_t__ KEY_EXTENDED ; 
 scalar_t__ KEY_HOME ; 
 scalar_t__ KEY_UP ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 TYPE_3__ UiVtbl ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

ULONG
FUNC6(PUI_MENU_INFO MenuInfo,
                            UiMenuKeyPressFilterCallback KeyPressFilter)
{
    ULONG KeyEvent = 0;
    ULONG Selected, Count;

    //
    // Check for a keypress
    //
    if (!FUNC1())
        return 0; // None, bail out

    //
    // Check if the timeout is not already complete
    //
    if (MenuInfo->MenuTimeRemaining != -1)
    {
        //
        // Cancel it and remove it
        //
        MenuInfo->MenuTimeRemaining = -1;
        FUNC2(MenuInfo); // FIXME: Remove for minimal UI too
    }

    //
    // Get the key (get the extended key if needed)
    //
    KeyEvent = FUNC0();
    if (KeyEvent == KEY_EXTENDED)
        KeyEvent = FUNC0();

    //
    // Call the supplied key filter callback function to see
    // if it is going to handle this keypress.
    //
    if (KeyPressFilter &&
        KeyPressFilter(KeyEvent, MenuInfo->SelectedMenuItem, MenuInfo->Context))
    {
        //
        // It processed the key character, so redraw and exit
        //
        UiVtbl.DrawMenu(MenuInfo);
        return 0;
    }

    //
    // Process the key
    //
    if ((KeyEvent == KEY_UP  ) || (KeyEvent == KEY_DOWN) ||
        (KeyEvent == KEY_HOME) || (KeyEvent == KEY_END ))
    {
        //
        // Get the current selected item and count
        //
        Selected = MenuInfo->SelectedMenuItem;
        Count = MenuInfo->MenuItemCount - 1;

        //
        // Check the key and change the selected menu item
        //
        if ((KeyEvent == KEY_UP) && (Selected > 0))
        {
            //
            // Deselect previous item and go up
            //
            MenuInfo->SelectedMenuItem--;
            FUNC3(MenuInfo, Selected);
            Selected--;

            // Skip past any separators
            if ((Selected > 0) &&
                (MenuInfo->MenuItemList[Selected] == NULL))
            {
                MenuInfo->SelectedMenuItem--;
            }
        }
        else if ( ((KeyEvent == KEY_UP) && (Selected == 0)) ||
                   (KeyEvent == KEY_END) )
        {
            //
            // Go to the end
            //
            MenuInfo->SelectedMenuItem = Count;
            FUNC3(MenuInfo, Selected);
        }
        else if ((KeyEvent == KEY_DOWN) && (Selected < Count))
        {
            //
            // Deselect previous item and go down
            //
            MenuInfo->SelectedMenuItem++;
            FUNC3(MenuInfo, Selected);
            Selected++;

            // Skip past any separators
            if ((Selected < Count) &&
                (MenuInfo->MenuItemList[Selected] == NULL))
            {
                MenuInfo->SelectedMenuItem++;
            }
        }
        else if ( ((KeyEvent == KEY_DOWN) && (Selected == Count)) ||
                   (KeyEvent == KEY_HOME) )
        {
            //
            // Go to the beginning
            //
            MenuInfo->SelectedMenuItem = 0;
            FUNC3(MenuInfo, Selected);
        }

        //
        // Select new item and update video buffer
        //
        FUNC3(MenuInfo, MenuInfo->SelectedMenuItem);
        FUNC4();
    }

    //
    // Return the pressed key
    //
    return KeyEvent;
}