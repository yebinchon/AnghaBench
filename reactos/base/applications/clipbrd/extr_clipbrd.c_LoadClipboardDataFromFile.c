
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hMainWnd; int hInstance; } ;
typedef int LPWSTR ;


 int CloseClipboard () ;
 int EmptyClipboard () ;
 TYPE_1__ Globals ;
 scalar_t__ IDYES ;
 int MB_ICONWARNING ;
 int MB_YESNO ;
 scalar_t__ MessageBoxRes (int ,int ,int ,int ,int) ;
 int OpenClipboard (int ) ;
 int ReadClipboardFile (int ) ;
 int STRING_DELETE_MSG ;
 int STRING_DELETE_TITLE ;
 int ShowLastWin32Error (int ) ;

__attribute__((used)) static void LoadClipboardDataFromFile(LPWSTR lpszFileName)
{
    if (MessageBoxRes(Globals.hMainWnd, Globals.hInstance,
                      STRING_DELETE_MSG, STRING_DELETE_TITLE,
                      MB_ICONWARNING | MB_YESNO) != IDYES)
    {
        return;
    }

    if (!OpenClipboard(Globals.hMainWnd))
    {
        ShowLastWin32Error(Globals.hMainWnd);
        return;
    }

    EmptyClipboard();
    ReadClipboardFile(lpszFileName);

    CloseClipboard();
}
