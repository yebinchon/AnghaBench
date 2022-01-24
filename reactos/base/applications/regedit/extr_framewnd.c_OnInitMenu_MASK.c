#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  abValueData ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FAVORITES_MENU_POSITION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 scalar_t__ ID_FAVORITES_MIN ; 
 int /*<<< orphan*/  MF_BYPOSITION ; 
 int /*<<< orphan*/  MF_SEPARATOR ; 
 scalar_t__ REG_SZ ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  s_szFavoritesRegKey ; 

__attribute__((used)) static void FUNC9(HWND hWnd)
{
    LONG lResult;
    HKEY hKey = NULL;
    DWORD dwIndex, cbValueName, cbValueData, dwType;
    WCHAR szValueName[256];
    BYTE abValueData[256];
    static int s_nFavoriteMenuSubPos = -1;
    HMENU hMenu;
    BOOL bDisplayedAny = FALSE;

    /* Find Favorites menu and clear it out */
    hMenu = FUNC4(FUNC2(hWnd), FAVORITES_MENU_POSITION);
    if (!hMenu)
        goto done;
    if (s_nFavoriteMenuSubPos < 0)
    {
        s_nFavoriteMenuSubPos = FUNC3(hMenu);
    }
    else
    {
        while(FUNC8(hMenu, s_nFavoriteMenuSubPos, MF_BYPOSITION)) ;
    }

    lResult = FUNC7(HKEY_CURRENT_USER, s_szFavoritesRegKey, &hKey);
    if (lResult != ERROR_SUCCESS)
        goto done;

    dwIndex = 0;
    do
    {
        cbValueName = FUNC1(szValueName);
        cbValueData = sizeof(abValueData);
        lResult = FUNC6(hKey, dwIndex, szValueName, &cbValueName, NULL, &dwType, abValueData, &cbValueData);
        if ((lResult == ERROR_SUCCESS) && (dwType == REG_SZ))
        {
            if (!bDisplayedAny)
            {
                FUNC0(hMenu, MF_SEPARATOR, 0, NULL);
                bDisplayedAny = TRUE;
            }
            FUNC0(hMenu, 0, ID_FAVORITES_MIN + FUNC3(hMenu), szValueName);
        }
        dwIndex++;
    }
    while(lResult == ERROR_SUCCESS);

done:
    if (hKey)
        FUNC5(hKey);
}