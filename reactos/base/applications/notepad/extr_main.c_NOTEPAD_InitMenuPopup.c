
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_2__ {int hMainWnd; int hEdit; scalar_t__ bShowStatusBar; scalar_t__ bWrapLongLines; } ;
typedef int LPARAM ;
typedef int HMENU ;


 int CF_TEXT ;
 int CMD_COPY ;
 int CMD_CUT ;
 int CMD_DELETE ;
 int CMD_PASTE ;
 int CMD_SELECT_ALL ;
 int CMD_STATUSBAR ;
 int CMD_UNDO ;
 int CMD_WRAP ;
 int CheckMenuItem (int ,int ,int) ;
 int DrawMenuBar (int ) ;
 int EM_CANUNDO ;
 int EM_GETSEL ;
 int EnableMenuItem (int ,int ,int) ;
 int GetMenu (int ) ;
 scalar_t__ GetWindowTextLength (int ) ;
 TYPE_1__ Globals ;
 scalar_t__ HIWORD (int) ;
 scalar_t__ IsClipboardFormatAvailable (int ) ;
 scalar_t__ LOWORD (int) ;
 int MF_BYCOMMAND ;
 int MF_CHECKED ;
 int MF_ENABLED ;
 int MF_GRAYED ;
 int MF_UNCHECKED ;
 scalar_t__ SendMessage (int ,int ,int ,int ) ;
 int UNREFERENCED_PARAMETER (int ) ;

__attribute__((used)) static VOID NOTEPAD_InitMenuPopup(HMENU menu, LPARAM index)
{
    int enable;

    UNREFERENCED_PARAMETER(index);

    CheckMenuItem(GetMenu(Globals.hMainWnd), CMD_WRAP,
        MF_BYCOMMAND | (Globals.bWrapLongLines ? MF_CHECKED : MF_UNCHECKED));
    if (!Globals.bWrapLongLines)
    {
        CheckMenuItem(GetMenu(Globals.hMainWnd), CMD_STATUSBAR,
            MF_BYCOMMAND | (Globals.bShowStatusBar ? MF_CHECKED : MF_UNCHECKED));
    }
    EnableMenuItem(menu, CMD_UNDO,
        SendMessage(Globals.hEdit, EM_CANUNDO, 0, 0) ? MF_ENABLED : MF_GRAYED);
    EnableMenuItem(menu, CMD_PASTE,
        IsClipboardFormatAvailable(CF_TEXT) ? MF_ENABLED : MF_GRAYED);
    enable = (int) SendMessage(Globals.hEdit, EM_GETSEL, 0, 0);
    enable = (HIWORD(enable) == LOWORD(enable)) ? MF_GRAYED : MF_ENABLED;
    EnableMenuItem(menu, CMD_CUT, enable);
    EnableMenuItem(menu, CMD_COPY, enable);
    EnableMenuItem(menu, CMD_DELETE, enable);

    EnableMenuItem(menu, CMD_SELECT_ALL,
        GetWindowTextLength(Globals.hEdit) ? MF_ENABLED : MF_GRAYED);
    DrawMenuBar(Globals.hMainWnd);
}
