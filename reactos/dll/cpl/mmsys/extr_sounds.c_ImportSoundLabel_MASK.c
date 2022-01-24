#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szValue ;
struct TYPE_13__ {int /*<<< orphan*/  szName; } ;
struct TYPE_12__ {int /*<<< orphan*/ * szDefault; } ;
struct TYPE_11__ {int /*<<< orphan*/  szValue; } ;
struct TYPE_10__ {int /*<<< orphan*/  szName; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  PSOUND_SCHEME_CONTEXT ;
typedef  TYPE_1__* PLABEL_MAP ;
typedef  TYPE_2__* PLABEL_CONTEXT ;
typedef  TYPE_3__* PGLOBAL_DATA ;
typedef  TYPE_4__* PAPP_MAP ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int FALSE ; 
 TYPE_2__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_READ ; 
 int MAX_PATH ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int TRUE ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

BOOL
FUNC9(PGLOBAL_DATA pGlobalData, HWND hwndDlg, HKEY hKey, TCHAR * szProfile, TCHAR * szLabelName, TCHAR * szAppName, PAPP_MAP AppMap, PLABEL_MAP LabelMap)
{
    HKEY hSubKey;
    TCHAR szValue[MAX_PATH];
    TCHAR szBuffer[MAX_PATH];
    DWORD cbValue, cchLength;
    PSOUND_SCHEME_CONTEXT pScheme;
    PLABEL_CONTEXT pLabelContext;
    BOOL bCurrentProfile, bActiveProfile;

    //MessageBox(hwndDlg, szProfile, szLabelName, MB_OK);

    bCurrentProfile = !FUNC8(szProfile, FUNC5(".Current"));
    bActiveProfile = !FUNC8(szProfile, pGlobalData->szDefault);

    if (FUNC3(hKey,
                     szProfile,
                     0,
                     KEY_READ,
                     &hSubKey) != ERROR_SUCCESS)
    {
        return FALSE;
    }

    cbValue = sizeof(szValue);
    if (FUNC4(hSubKey,
                        NULL,
                        NULL,
                        NULL,
                        (LPBYTE)szValue,
                        &cbValue) != ERROR_SUCCESS)
    {
        return FALSE;
    }

    if (bCurrentProfile)
        pScheme = FUNC2(hwndDlg, pGlobalData->szDefault);
    else
        pScheme = FUNC2(hwndDlg, szProfile);

    if (!pScheme)
    {
        //MessageBox(hwndDlg, szProfile, _T("no profile!!"), MB_OK);
        return FALSE;
    }
    pLabelContext = FUNC1(pGlobalData, pScheme, AppMap->szName, LabelMap->szName);

    cchLength = FUNC0(szValue, szBuffer, FUNC6(szBuffer));
    if (cchLength == 0 || cchLength > FUNC6(szBuffer))
    {
        /* fixme */
        return FALSE;
    }

    if (bCurrentProfile)
        FUNC7(pLabelContext->szValue, szBuffer);
    else if (!bActiveProfile)
        FUNC7(pLabelContext->szValue, szBuffer);

    return TRUE;
}