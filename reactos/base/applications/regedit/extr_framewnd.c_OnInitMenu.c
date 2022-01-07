
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abValueData ;
typedef int WCHAR ;
typedef scalar_t__ LONG ;
typedef int HWND ;
typedef int HMENU ;
typedef int * HKEY ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int AppendMenu (int ,int ,scalar_t__,int *) ;
 scalar_t__ COUNT_OF (int *) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int FAVORITES_MENU_POSITION ;
 int GetMenu (int ) ;
 int GetMenuItemCount (int ) ;
 int GetSubMenu (int ,int ) ;
 int HKEY_CURRENT_USER ;
 scalar_t__ ID_FAVORITES_MIN ;
 int MF_BYPOSITION ;
 int MF_SEPARATOR ;
 scalar_t__ REG_SZ ;
 int RegCloseKey (int *) ;
 scalar_t__ RegEnumValueW (int *,scalar_t__,int *,scalar_t__*,int *,scalar_t__*,int *,scalar_t__*) ;
 scalar_t__ RegOpenKeyW (int ,int ,int **) ;
 scalar_t__ RemoveMenu (int ,int,int ) ;
 scalar_t__ TRUE ;
 int s_szFavoritesRegKey ;

__attribute__((used)) static void OnInitMenu(HWND hWnd)
{
    LONG lResult;
    HKEY hKey = ((void*)0);
    DWORD dwIndex, cbValueName, cbValueData, dwType;
    WCHAR szValueName[256];
    BYTE abValueData[256];
    static int s_nFavoriteMenuSubPos = -1;
    HMENU hMenu;
    BOOL bDisplayedAny = FALSE;


    hMenu = GetSubMenu(GetMenu(hWnd), FAVORITES_MENU_POSITION);
    if (!hMenu)
        goto done;
    if (s_nFavoriteMenuSubPos < 0)
    {
        s_nFavoriteMenuSubPos = GetMenuItemCount(hMenu);
    }
    else
    {
        while(RemoveMenu(hMenu, s_nFavoriteMenuSubPos, MF_BYPOSITION)) ;
    }

    lResult = RegOpenKeyW(HKEY_CURRENT_USER, s_szFavoritesRegKey, &hKey);
    if (lResult != ERROR_SUCCESS)
        goto done;

    dwIndex = 0;
    do
    {
        cbValueName = COUNT_OF(szValueName);
        cbValueData = sizeof(abValueData);
        lResult = RegEnumValueW(hKey, dwIndex, szValueName, &cbValueName, ((void*)0), &dwType, abValueData, &cbValueData);
        if ((lResult == ERROR_SUCCESS) && (dwType == REG_SZ))
        {
            if (!bDisplayedAny)
            {
                AppendMenu(hMenu, MF_SEPARATOR, 0, ((void*)0));
                bDisplayedAny = TRUE;
            }
            AppendMenu(hMenu, 0, ID_FAVORITES_MIN + GetMenuItemCount(hMenu), szValueName);
        }
        dwIndex++;
    }
    while(lResult == ERROR_SUCCESS);

done:
    if (hKey)
        RegCloseKey(hKey);
}
