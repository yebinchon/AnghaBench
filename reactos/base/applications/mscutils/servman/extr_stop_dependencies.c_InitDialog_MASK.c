#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_2__ {scalar_t__ ServiceList; scalar_t__ DisplayName; } ;
typedef  TYPE_1__* PSTOP_DATA ;
typedef  scalar_t__ LPWSTR ;
typedef  scalar_t__ LPARAM ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/ * HICON ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ICON_SMALL ; 
 int /*<<< orphan*/  IDC_STOP_DEPENDS ; 
 int /*<<< orphan*/  IDC_STOP_DEPENDS_LB ; 
 int /*<<< orphan*/  IDI_SM_ICON ; 
 int /*<<< orphan*/  IDS_STOP_DEPENDS ; 
 int /*<<< orphan*/  IMAGE_ICON ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ProcessHeap ; 
 int /*<<< orphan*/  SM_CXSMICON ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_SETICON ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  hInstance ; 
 int FUNC13 (scalar_t__) ; 

__attribute__((used)) static BOOL
FUNC14(HWND hDlg,
           UINT Message,
           WPARAM wParam,
           LPARAM lParam)
{
    PSTOP_DATA StopData;
    HWND hServiceListBox;
    LPWSTR lpPartialStr, lpStr;
    DWORD fullLen;
    HICON hIcon = NULL;
    BOOL bRet = FALSE;

    StopData = (PSTOP_DATA)lParam;


    /* Load the icon for the window */
    hIcon = (HICON)FUNC7(hInstance,
                                FUNC9(IDI_SM_ICON),
                                IMAGE_ICON,
                                FUNC4(SM_CXSMICON),
                                FUNC4(SM_CXSMICON),
                                0);
    if (hIcon)
    {
        /* Set it */
        FUNC11(hDlg,
                        WM_SETICON,
                        ICON_SMALL,
                        (LPARAM)hIcon);
        FUNC2(hIcon);
    }

    /* Load the stop depends note */
    if (FUNC1(&lpPartialStr,
                            hInstance,
                            IDS_STOP_DEPENDS))
    {
        /* Get the length required */
        fullLen = FUNC13(lpPartialStr) + FUNC13(StopData->DisplayName) + 1;

        lpStr = FUNC5(ProcessHeap,
                          0,
                          fullLen * sizeof(WCHAR));
        if (lpStr)
        {
            /* Add the service name to the depends note */
            FUNC12(lpStr,
                        fullLen,
                        lpPartialStr,
                        StopData->DisplayName);

            /* Add the string to the dialog */
            FUNC10(hDlg,
                                IDC_STOP_DEPENDS,
                                WM_SETTEXT,
                                0,
                                (LPARAM)lpStr);

            FUNC6(ProcessHeap,
                        0,
                        lpStr);

            bRet = TRUE;
        }

        FUNC8(lpPartialStr);
    }

    /* Display the list of services which need stopping */
    hServiceListBox = FUNC3(hDlg, IDC_STOP_DEPENDS_LB);
    if (hServiceListBox)
    {
        FUNC0(hServiceListBox,
                              (LPWSTR)StopData->ServiceList);
    }
 
    return bRet;
}