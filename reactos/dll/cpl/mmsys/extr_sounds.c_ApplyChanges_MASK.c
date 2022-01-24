#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_8__ {struct TYPE_8__* Next; scalar_t__ szValue; TYPE_2__* LabelMap; TYPE_1__* AppMap; } ;
struct TYPE_7__ {TYPE_4__* LabelContext; scalar_t__ szName; } ;
struct TYPE_6__ {int /*<<< orphan*/  szName; } ;
struct TYPE_5__ {int /*<<< orphan*/  szName; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_3__* PSOUND_SCHEME_CONTEXT ;
typedef  TYPE_4__* PLABEL_CONTEXT ;
typedef  scalar_t__ LRESULT ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  LONG_PTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ CB_ERR ; 
 int /*<<< orphan*/  CB_GETCURSEL ; 
 int /*<<< orphan*/  CB_GETITEMDATA ; 
 int /*<<< orphan*/  DWLP_MSGRESULT ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  IDC_SOUND_SCHEME ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 scalar_t__ PSNRET_NOERROR ; 
 int /*<<< orphan*/  REG_EXPAND_SZ ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__) ; 

BOOL
FUNC9(HWND hwndDlg)
{
    HKEY hKey, hSubKey;
    LRESULT lIndex;
    PSOUND_SCHEME_CONTEXT pScheme;
    HWND hDlgCtrl;
    PLABEL_CONTEXT pLabelContext;
    TCHAR Buffer[100];

    hDlgCtrl = FUNC0(hwndDlg, IDC_SOUND_SCHEME);

    lIndex = FUNC4(hDlgCtrl, CB_GETCURSEL, (WPARAM)0, (LPARAM)0);
    if (lIndex == CB_ERR)
    {
        return FALSE;
    }

    lIndex = FUNC4(hDlgCtrl, CB_GETITEMDATA, (WPARAM)lIndex, (LPARAM)0);
    if (lIndex == CB_ERR)
    {
        return FALSE;
    }
    pScheme = (PSOUND_SCHEME_CONTEXT)lIndex;

    if (FUNC2(HKEY_CURRENT_USER,
                     FUNC6("AppEvents\\Schemes"),
                     0,
                     KEY_WRITE,
                     &hKey) != ERROR_SUCCESS)
    {
        return FALSE;
    }

    FUNC3(hKey, NULL, 0, REG_SZ, (LPBYTE)pScheme->szName, (FUNC8(pScheme->szName) +1) * sizeof(TCHAR));
    FUNC1(hKey);

    if (FUNC2(HKEY_CURRENT_USER,
                     FUNC6("AppEvents\\Schemes\\Apps"),
                     0,
                     KEY_WRITE,
                     &hKey) != ERROR_SUCCESS)
    {
        return FALSE;
    }

    pLabelContext = pScheme->LabelContext;

    while (pLabelContext)
    {
        FUNC7(Buffer, FUNC6("%s\\%s\\.Current"), pLabelContext->AppMap->szName, pLabelContext->LabelMap->szName);

        if (FUNC2(hKey, Buffer, 0, KEY_WRITE, &hSubKey) == ERROR_SUCCESS)
        {
            FUNC3(hSubKey, NULL, 0, REG_EXPAND_SZ, (LPBYTE)pLabelContext->szValue, (FUNC8(pLabelContext->szValue) +1) * sizeof(TCHAR));
            FUNC1(hSubKey);
        }

        pLabelContext = pLabelContext->Next;
    }
    FUNC1(hKey);

    FUNC5(hwndDlg, DWLP_MSGRESULT, (LONG_PTR)PSNRET_NOERROR);
    return TRUE;
}