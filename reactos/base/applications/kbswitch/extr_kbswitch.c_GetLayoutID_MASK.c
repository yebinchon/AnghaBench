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
typedef  int /*<<< orphan*/  szTempLCID ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  SIZE_T ;
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CCH_LAYOUT_ID ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static BOOL
FUNC5(LPTSTR szLayoutNum, LPTSTR szLCID, SIZE_T LCIDLength)
{
    DWORD dwBufLen;
    DWORD dwRes;
    HKEY hKey;
    TCHAR szTempLCID[CCH_LAYOUT_ID + 1];

    // Get the Layout ID
    if (FUNC1(HKEY_CURRENT_USER, FUNC4("Keyboard Layout\\Preload"), 0, KEY_QUERY_VALUE, &hKey) == ERROR_SUCCESS)
    {
        dwBufLen = sizeof(szTempLCID);
        dwRes = FUNC2(hKey, szLayoutNum, NULL, NULL, (LPBYTE)szTempLCID, &dwBufLen);

        if (dwRes != ERROR_SUCCESS)
        {
            FUNC0(hKey);
            return FALSE;
        }

        FUNC0(hKey);
    }

    // Look for a substitute of this layout
    if (FUNC1(HKEY_CURRENT_USER, FUNC4("Keyboard Layout\\Substitutes"), 0, KEY_QUERY_VALUE, &hKey) == ERROR_SUCCESS)
    {
        dwBufLen = sizeof(szTempLCID);

        if (FUNC2(hKey, szTempLCID, NULL, NULL, (LPBYTE)szLCID, &dwBufLen) != ERROR_SUCCESS)
        {
            // No substitute found, then use the old LCID
            FUNC3(szLCID, LCIDLength, szTempLCID);
        }

        FUNC0(hKey);
    }
    else
    {
        // Substitutes key couldn't be opened, so use the old LCID
        FUNC3(szLCID, LCIDLength, szTempLCID);
    }

    return TRUE;
}