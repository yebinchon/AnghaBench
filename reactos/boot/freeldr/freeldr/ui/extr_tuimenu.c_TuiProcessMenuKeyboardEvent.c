
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ (* UiMenuKeyPressFilterCallback ) (scalar_t__,scalar_t__,int ) ;
typedef scalar_t__ ULONG ;
struct TYPE_8__ {int (* DrawMenu ) (TYPE_1__*) ;} ;
struct TYPE_7__ {int MenuTimeRemaining; scalar_t__ SelectedMenuItem; scalar_t__ MenuItemCount; int ** MenuItemList; int Context; } ;
typedef TYPE_1__* PUI_MENU_INFO ;


 scalar_t__ KEY_DOWN ;
 scalar_t__ KEY_END ;
 scalar_t__ KEY_EXTENDED ;
 scalar_t__ KEY_HOME ;
 scalar_t__ KEY_UP ;
 scalar_t__ MachConsGetCh () ;
 int MachConsKbHit () ;
 int TuiDrawMenuBox (TYPE_1__*) ;
 int TuiDrawMenuItem (TYPE_1__*,scalar_t__) ;
 TYPE_3__ UiVtbl ;
 int VideoCopyOffScreenBufferToVRAM () ;
 int stub1 (TYPE_1__*) ;

ULONG
TuiProcessMenuKeyboardEvent(PUI_MENU_INFO MenuInfo,
                            UiMenuKeyPressFilterCallback KeyPressFilter)
{
    ULONG KeyEvent = 0;
    ULONG Selected, Count;




    if (!MachConsKbHit())
        return 0;




    if (MenuInfo->MenuTimeRemaining != -1)
    {



        MenuInfo->MenuTimeRemaining = -1;
        TuiDrawMenuBox(MenuInfo);
    }




    KeyEvent = MachConsGetCh();
    if (KeyEvent == KEY_EXTENDED)
        KeyEvent = MachConsGetCh();





    if (KeyPressFilter &&
        KeyPressFilter(KeyEvent, MenuInfo->SelectedMenuItem, MenuInfo->Context))
    {



        UiVtbl.DrawMenu(MenuInfo);
        return 0;
    }




    if ((KeyEvent == KEY_UP ) || (KeyEvent == KEY_DOWN) ||
        (KeyEvent == KEY_HOME) || (KeyEvent == KEY_END ))
    {



        Selected = MenuInfo->SelectedMenuItem;
        Count = MenuInfo->MenuItemCount - 1;




        if ((KeyEvent == KEY_UP) && (Selected > 0))
        {



            MenuInfo->SelectedMenuItem--;
            TuiDrawMenuItem(MenuInfo, Selected);
            Selected--;


            if ((Selected > 0) &&
                (MenuInfo->MenuItemList[Selected] == ((void*)0)))
            {
                MenuInfo->SelectedMenuItem--;
            }
        }
        else if ( ((KeyEvent == KEY_UP) && (Selected == 0)) ||
                   (KeyEvent == KEY_END) )
        {



            MenuInfo->SelectedMenuItem = Count;
            TuiDrawMenuItem(MenuInfo, Selected);
        }
        else if ((KeyEvent == KEY_DOWN) && (Selected < Count))
        {



            MenuInfo->SelectedMenuItem++;
            TuiDrawMenuItem(MenuInfo, Selected);
            Selected++;


            if ((Selected < Count) &&
                (MenuInfo->MenuItemList[Selected] == ((void*)0)))
            {
                MenuInfo->SelectedMenuItem++;
            }
        }
        else if ( ((KeyEvent == KEY_DOWN) && (Selected == Count)) ||
                   (KeyEvent == KEY_HOME) )
        {



            MenuInfo->SelectedMenuItem = 0;
            TuiDrawMenuItem(MenuInfo, Selected);
        }




        TuiDrawMenuItem(MenuInfo, MenuInfo->SelectedMenuItem);
        VideoCopyOffScreenBufferToVRAM();
    }




    return KeyEvent;
}
