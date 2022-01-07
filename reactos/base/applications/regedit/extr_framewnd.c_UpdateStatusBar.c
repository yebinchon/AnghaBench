
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hTreeWnd; } ;
typedef scalar_t__ LPCWSTR ;
typedef int LPARAM ;
typedef int HKEY ;


 scalar_t__ GetItemPath (int ,int ,int *) ;
 int SB_SETTEXTW ;
 int SendMessageW (int ,int ,int ,int ) ;
 TYPE_1__* g_pChildWnd ;
 int hStatusBar ;

void UpdateStatusBar(void)
{
    HKEY hKeyRoot;
    LPCWSTR pszKeyPath = GetItemPath(g_pChildWnd->hTreeWnd, 0, &hKeyRoot);

    SendMessageW(hStatusBar, SB_SETTEXTW, 0, (LPARAM)pszKeyPath);
}
