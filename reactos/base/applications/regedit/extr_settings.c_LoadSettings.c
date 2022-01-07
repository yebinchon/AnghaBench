
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tConfig ;
typedef int WINDOWPLACEMENT ;
typedef int WCHAR ;
struct TYPE_9__ {int length; } ;
struct TYPE_8__ {int hTreeWnd; int nSplitPos; int hListWnd; } ;
struct TYPE_7__ {int bottom; int right; } ;
struct TYPE_6__ {TYPE_4__ tPlacement; int TreeViewSize; int DataColumnSize; int TypeColumnSize; int NameColumnSize; scalar_t__ StatusBarVisible; } ;
typedef TYPE_1__ RegistryBinaryConfig ;
typedef TYPE_2__ RECT ;
typedef int LPBYTE ;
typedef int * HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int COUNT_OF (int *) ;
 int CheckMenuItem (int ,int ,int) ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int GetClientRect (int ,TYPE_2__*) ;
 int GetSubMenu (int ,int ) ;
 int HKEY_CURRENT_USER ;
 int ID_VIEW_MENU ;
 int ID_VIEW_STATUSBAR ;
 int ListView_SetColumnWidth (int ,int,int ) ;
 int MAX_PATH ;
 int MF_BYCOMMAND ;
 int MF_CHECKED ;
 int MF_UNCHECKED ;
 scalar_t__ QueryStringValue (int ,int ,char*,int *,int ) ;
 int RegCloseKey (int *) ;
 scalar_t__ RegOpenKeyW (int ,int ,int **) ;
 scalar_t__ RegQueryValueExW (int *,char*,int *,int *,int ,int*) ;
 int ResizeWnd (int ,int ) ;
 int SW_HIDE ;
 int SW_SHOW ;
 int SW_SHOWNORMAL ;
 int SelectNode (int ,int *) ;
 int SetWindowPlacement (int ,TYPE_4__*) ;
 int ShowWindow (int ,int ) ;
 TYPE_3__* g_pChildWnd ;
 int g_szGeneralRegKey ;
 int hFrameWnd ;
 int hMenuFrame ;
 int hStatusBar ;

extern void LoadSettings(void)
{
    HKEY hKey = ((void*)0);
    WCHAR szBuffer[MAX_PATH];

    if (RegOpenKeyW(HKEY_CURRENT_USER, g_szGeneralRegKey, &hKey) == ERROR_SUCCESS)
    {
        RegistryBinaryConfig tConfig;
        DWORD iBufferSize = sizeof(tConfig);
        BOOL bVisible = FALSE;

        if (RegQueryValueExW(hKey, L"View", ((void*)0), ((void*)0), (LPBYTE)&tConfig, &iBufferSize) == ERROR_SUCCESS)
        {
            if (iBufferSize == sizeof(tConfig))
            {
                RECT rcTemp;


                CheckMenuItem(GetSubMenu(hMenuFrame, ID_VIEW_MENU), ID_VIEW_STATUSBAR, MF_BYCOMMAND | (tConfig.StatusBarVisible ? MF_CHECKED : MF_UNCHECKED));
                ShowWindow(hStatusBar, (tConfig.StatusBarVisible ? SW_SHOW : SW_HIDE));


                (void)ListView_SetColumnWidth(g_pChildWnd->hListWnd, 0, tConfig.NameColumnSize);
                (void)ListView_SetColumnWidth(g_pChildWnd->hListWnd, 1, tConfig.TypeColumnSize);
                (void)ListView_SetColumnWidth(g_pChildWnd->hListWnd, 2, tConfig.DataColumnSize);


                GetClientRect(hFrameWnd, &rcTemp);
                g_pChildWnd->nSplitPos = tConfig.TreeViewSize;
                ResizeWnd(rcTemp.right, rcTemp.bottom);


                tConfig.tPlacement.length = sizeof(WINDOWPLACEMENT);
                bVisible = SetWindowPlacement(hFrameWnd, &tConfig.tPlacement);
            }
        }


        if (!bVisible)
            ShowWindow(hFrameWnd, SW_SHOWNORMAL);


        if (QueryStringValue(HKEY_CURRENT_USER, g_szGeneralRegKey, L"LastKey", szBuffer, COUNT_OF(szBuffer)) == ERROR_SUCCESS)
        {
            SelectNode(g_pChildWnd->hTreeWnd, szBuffer);
        }

        RegCloseKey(hKey);
    }
    else
    {

        ShowWindow(hFrameWnd, SW_SHOWNORMAL);
    }
}
