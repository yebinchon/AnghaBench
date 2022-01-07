
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_2__ {int hInstance; int hMainWnd; int hMenu; } ;
typedef int HMENU ;


 int ARRAYSIZE (int *) ;
 int AppendMenuW (int ,int,scalar_t__,int *) ;
 scalar_t__ CMD_AUTOMATIC ;
 int CloseClipboard () ;
 scalar_t__ CountClipboardFormats () ;
 int DISPLAY_MENU_POS ;
 int DeleteMenu (int ,int,int ) ;
 scalar_t__ EnumClipboardFormats (scalar_t__) ;
 int GetMenuItemCount (int ) ;
 int GetSubMenu (int ,int ) ;
 TYPE_1__ Globals ;
 scalar_t__ IsClipboardFormatSupported (scalar_t__) ;
 int MAX_FMT_NAME_LEN ;
 int MF_BYPOSITION ;
 int MF_GRAYED ;
 int MF_SEPARATOR ;
 int MF_STRING ;
 int OpenClipboard (int ) ;
 int RetrieveClipboardFormatName (int ,scalar_t__,int ,int *,int ) ;
 int TRUE ;

__attribute__((used)) static void UpdateDisplayMenu(void)
{
    UINT uFormat;
    HMENU hMenu;
    WCHAR szFormatName[MAX_FMT_NAME_LEN + 1];

    hMenu = GetSubMenu(Globals.hMenu, DISPLAY_MENU_POS);

    while (GetMenuItemCount(hMenu) > 1)
    {
        DeleteMenu(hMenu, 1, MF_BYPOSITION);
    }

    if (CountClipboardFormats() == 0)
        return;

    if (!OpenClipboard(Globals.hMainWnd))
        return;

    AppendMenuW(hMenu, MF_SEPARATOR, 0, ((void*)0));


    for (uFormat = EnumClipboardFormats(0); uFormat;
         uFormat = EnumClipboardFormats(uFormat))
    {
        if (IsClipboardFormatSupported(uFormat))
        {
            RetrieveClipboardFormatName(Globals.hInstance, uFormat, TRUE,
                                        szFormatName, ARRAYSIZE(szFormatName));
            AppendMenuW(hMenu, MF_STRING, CMD_AUTOMATIC + uFormat, szFormatName);
        }
    }


    for (uFormat = EnumClipboardFormats(0); uFormat;
         uFormat = EnumClipboardFormats(uFormat))
    {
        if (!IsClipboardFormatSupported(uFormat))
        {
            RetrieveClipboardFormatName(Globals.hInstance, uFormat, TRUE,
                                        szFormatName, ARRAYSIZE(szFormatName));
            AppendMenuW(hMenu, MF_STRING | MF_GRAYED, 0, szFormatName);
        }
    }

    CloseClipboard();
}
