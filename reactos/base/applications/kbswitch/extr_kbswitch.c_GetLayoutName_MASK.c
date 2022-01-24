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
typedef  int /*<<< orphan*/  szDispName ;
typedef  size_t UINT ;
typedef  char TCHAR ;
typedef  int SIZE_T ;
typedef  scalar_t__ LPTSTR ;
typedef  int /*<<< orphan*/  LPCTSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CCH_LAYOUT_ID ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static BOOL
FUNC14(LPTSTR szLayoutNum, LPTSTR szName, SIZE_T NameLength)
{
    HKEY hKey;
    DWORD dwBufLen;
    TCHAR szBuf[MAX_PATH], szDispName[MAX_PATH], szIndex[MAX_PATH], szPath[MAX_PATH];
    TCHAR szLCID[CCH_LAYOUT_ID + 1];
    HANDLE hLib;
    UINT i, j, k;

    if (!FUNC3(szLayoutNum, szLCID, FUNC0(szLCID)))
        return FALSE;

    FUNC10(szBuf, FUNC0(szBuf), FUNC11("SYSTEM\\CurrentControlSet\\Control\\Keyboard Layouts\\%s"), szLCID);

    if (FUNC7(HKEY_LOCAL_MACHINE, (LPCTSTR)szBuf, 0, KEY_QUERY_VALUE, &hKey) == ERROR_SUCCESS)
    {
        dwBufLen = sizeof(szDispName);

        if (FUNC8(hKey, FUNC11("Layout Display Name"), NULL, NULL, (LPBYTE)szDispName, &dwBufLen) == ERROR_SUCCESS)
        {
            if (szDispName[0] == '@')
            {
                size_t len = FUNC12(szDispName);

                for (i = 0; i < len; i++)
                {
                    if ((szDispName[i] == ',') && (szDispName[i + 1] == '-'))
                    {
                        for (j = i + 2, k = 0; j < FUNC12(szDispName)+1; j++, k++)
                        {
                            szIndex[k] = szDispName[j];
                        }
                        szDispName[i - 1] = '\0';
                        break;
                    }
                    else szDispName[i] = szDispName[i + 1];
                }

                if (FUNC1(szDispName, szPath, FUNC0(szPath)))
                {
                    hLib = FUNC4(szPath);
                    if (hLib)
                    {
                        if (FUNC5(hLib, FUNC13(szIndex), szPath, FUNC0(szPath)) != 0)
                        {
                            FUNC9(szName, NameLength, szPath);
                            FUNC6(hKey);
                            FUNC2(hLib);
                            return TRUE;
                        }
                        FUNC2(hLib);
                    }
                }
            }
        }

        dwBufLen = NameLength * sizeof(TCHAR);

        if (FUNC8(hKey, FUNC11("Layout Text"), NULL, NULL, (LPBYTE)szName, &dwBufLen) == ERROR_SUCCESS)
        {
            FUNC6(hKey);
            return TRUE;
        }

        FUNC6(hKey);
    }

    return FALSE;
}