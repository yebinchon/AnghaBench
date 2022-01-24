#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* LabelMap; } ;
struct TYPE_10__ {struct TYPE_10__* Next; TYPE_2__* AppMap; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_1__* PLABEL_MAP ;
typedef  int /*<<< orphan*/  PGLOBAL_DATA ;
typedef  TYPE_2__* PAPP_MAP ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  KEY_READ ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

DWORD
FUNC8(PGLOBAL_DATA pGlobalData, HWND hwndDlg, HKEY hKey, TCHAR * szLabelName, TCHAR * szAppName, PAPP_MAP pAppMap)
{
    HKEY hSubKey;
    DWORD dwNumProfiles;
    DWORD dwCurKey;
    DWORD dwResult;
    DWORD dwProfile;
    TCHAR szProfile[MAX_PATH];
    PLABEL_MAP pLabel;

    if (FUNC5(hKey,
                     szLabelName,
                     0,
                     KEY_READ,
                     &hSubKey) != ERROR_SUCCESS)
    {
        return FALSE;
    }
    pLabel = FUNC1(pGlobalData, pAppMap, szLabelName);

    FUNC0(pLabel);
    FUNC6(pGlobalData, pLabel);

    pLabel->AppMap = pAppMap;
    pLabel->Next = pAppMap->LabelMap;
    pAppMap->LabelMap = pLabel;

    dwNumProfiles = 0;
    dwCurKey = 0;
    do
    {
        dwProfile = FUNC7(szProfile);
        dwResult = FUNC4(hSubKey,
                                dwCurKey,
                                szProfile,
                                &dwProfile,
                                NULL,
                                NULL,
                                NULL,
                                NULL);

        if (dwResult == ERROR_SUCCESS)
        {
            if (FUNC2(pGlobalData, hwndDlg, hSubKey, szProfile, szLabelName, szAppName, pAppMap, pLabel))
            {
                dwNumProfiles++;
            }
        }

        dwCurKey++;
    } while (dwResult == ERROR_SUCCESS);

    FUNC3(hSubKey);

    return dwNumProfiles;
}