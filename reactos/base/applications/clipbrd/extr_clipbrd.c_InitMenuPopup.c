
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hMainWnd; } ;
typedef int LPARAM ;
typedef int HMENU ;


 scalar_t__ CMD_DELETE ;
 scalar_t__ CMD_SAVE_AS ;
 scalar_t__ CountClipboardFormats () ;
 int DrawMenuBar (int ) ;
 int EnableMenuItem (int ,scalar_t__,int ) ;
 scalar_t__ GetMenuItemID (int ,int) ;
 TYPE_1__ Globals ;
 int MF_ENABLED ;
 int MF_GRAYED ;

__attribute__((used)) static void InitMenuPopup(HMENU hMenu, LPARAM index)
{
    if ((GetMenuItemID(hMenu, 0) == CMD_DELETE) || (GetMenuItemID(hMenu, 1) == CMD_SAVE_AS))
    {
        if (CountClipboardFormats() == 0)
        {
            EnableMenuItem(hMenu, CMD_DELETE, MF_GRAYED);
            EnableMenuItem(hMenu, CMD_SAVE_AS, MF_GRAYED);
        }
        else
        {
            EnableMenuItem(hMenu, CMD_DELETE, MF_ENABLED);
            EnableMenuItem(hMenu, CMD_SAVE_AS, MF_ENABLED);
        }
    }

    DrawMenuBar(Globals.hMainWnd);
}
