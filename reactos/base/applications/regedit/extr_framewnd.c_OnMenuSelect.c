
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int* LPWSTR ;
typedef int LPARAM ;
typedef int HWND ;
typedef scalar_t__ HMENU ;


 scalar_t__ GetMenu (int ) ;
 scalar_t__ LoadStringW (int ,int,int*,int) ;
 int MF_POPUP ;
 int SB_SETTEXTW ;
 int SendMessageW (int ,int ,int ,int ) ;
 int hInst ;
 int hStatusBar ;
 int* wcschr (int*,int) ;
 int wcscpy (int*,char*) ;

__attribute__((used)) static void OnMenuSelect(HWND hWnd, UINT nItemID, UINT nFlags, HMENU hSysMenu)
{
    WCHAR str[100];

    wcscpy(str, L"");
    if (nFlags & MF_POPUP)
    {
        if (hSysMenu != GetMenu(hWnd))
        {
            if (nItemID == 2) nItemID = 5;
        }
    }
    if (LoadStringW(hInst, nItemID, str, 100))
    {

        LPWSTR lpsz = str;

        lpsz = wcschr(lpsz, L'\n');
        if (lpsz != ((void*)0))
            *lpsz = L'\0';
    }
    SendMessageW(hStatusBar, SB_SETTEXTW, 0, (LPARAM)str);
}
