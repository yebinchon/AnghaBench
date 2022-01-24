#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szDesc ;
typedef  int /*<<< orphan*/  szData ;
struct TYPE_6__ {TYPE_1__* pLabelMap; } ;
struct TYPE_5__ {struct TYPE_5__* Next; void* szIcon; void* szDesc; void* szName; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_1__* PLABEL_MAP ;
typedef  TYPE_2__* PGLOBAL_DATA ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  LABEL_MAP ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  KEY_READ ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 

BOOL
FUNC7(PGLOBAL_DATA pGlobalData, HKEY hKey, TCHAR * szSubKey)
{
    HKEY hSubKey;
    DWORD cbValue;
    TCHAR szDesc[MAX_PATH];
    TCHAR szData[MAX_PATH];
    PLABEL_MAP pMap;

    if (FUNC3(hKey,
                     szSubKey,
                     0,
                     KEY_READ,
                     &hSubKey) != ERROR_SUCCESS)
    {
        return FALSE;
    }

    cbValue = sizeof(szDesc);
    if (FUNC4(hSubKey,
                      NULL,
                      NULL,
                      NULL,
                      (LPBYTE)szDesc,
                      &cbValue) != ERROR_SUCCESS)
    {
        FUNC2(hSubKey);
        return FALSE;
    }

    cbValue = sizeof(szData);
    if (FUNC4(hSubKey,
                        FUNC5("DispFileName"),
                        NULL,
                        NULL,
                        (LPBYTE)szData,
                        &cbValue) != ERROR_SUCCESS)
    {
        FUNC2(hSubKey);
        return FALSE;
    }

    pMap = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, sizeof(LABEL_MAP));
    if (!pMap)
    {
        return FALSE;
    }

    pMap->szName = FUNC6(szSubKey);
    pMap->szDesc = FUNC6(szDesc);
    pMap->szIcon = FUNC6(szData);

    if (pGlobalData->pLabelMap)
    {
        pMap->Next = pGlobalData->pLabelMap;
        pGlobalData->pLabelMap = pMap;
    }
    else
    {
        pGlobalData->pLabelMap = pMap;
        pGlobalData->pLabelMap->Next = NULL;
    }
    return TRUE;
}