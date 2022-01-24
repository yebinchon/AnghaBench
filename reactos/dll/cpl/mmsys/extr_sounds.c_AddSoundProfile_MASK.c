#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szValue ;
struct TYPE_4__ {int /*<<< orphan*/  szName; int /*<<< orphan*/  szDesc; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  SOUND_SCHEME_CONTEXT ;
typedef  TYPE_1__* PSOUND_SCHEME_CONTEXT ;
typedef  scalar_t__ LRESULT ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ CB_ERR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IDC_SOUND_SCHEME ; 
 int /*<<< orphan*/  KEY_READ ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 

BOOL
FUNC11(HWND hwndDlg, HKEY hKey, TCHAR * szSubKey, BOOL SetDefault)
{
    HKEY hSubKey;
    TCHAR szValue[MAX_PATH];
    DWORD cbValue, dwResult;
    LRESULT lResult;
    PSOUND_SCHEME_CONTEXT pScheme;

    if (FUNC8(hKey,
                     szSubKey,
                     0,
                     KEY_READ,
                     &hSubKey) != ERROR_SUCCESS)
    {
        return FALSE;
    }

    cbValue = sizeof(szValue);
    dwResult = FUNC9(hSubKey,
                               NULL,
                               NULL,
                               NULL,
                               (LPBYTE)szValue,
                               &cbValue);
    FUNC7(hSubKey);

    if (dwResult != ERROR_SUCCESS)
        return FALSE;

    /* Try to add the new profile */
    lResult = FUNC0(FUNC4(hwndDlg, IDC_SOUND_SCHEME), szValue);
    if (lResult == CB_ERR)
        return FALSE;

    /* Allocate the profile scheme buffer */
    pScheme = FUNC6(FUNC5(), HEAP_ZERO_MEMORY, sizeof(SOUND_SCHEME_CONTEXT));
    if (pScheme == NULL)
    {
        /* We failed to allocate the buffer, no need to keep a dangling string in the combobox */
        FUNC1(FUNC4(hwndDlg, IDC_SOUND_SCHEME), lResult);
        return FALSE;
    }

    FUNC10(pScheme->szDesc, MAX_PATH, szValue);
    FUNC10(pScheme->szName, MAX_PATH, szSubKey);

    /* Associate the value with the item in the combobox */
    FUNC3(FUNC4(hwndDlg, IDC_SOUND_SCHEME), lResult, pScheme);

    /* Optionally, select the profile */
    if (SetDefault)
    {
        FUNC2(FUNC4(hwndDlg, IDC_SOUND_SCHEME), lResult);
    }

    return TRUE;
}