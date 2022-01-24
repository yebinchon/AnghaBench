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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_6__ {int ScreenSaverCount; TYPE_1__* ScreenSaverItems; } ;
struct TYPE_5__ {scalar_t__ szDisplayName; int /*<<< orphan*/  bIsScreenSaver; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_1__ ScreenSaverItem ;
typedef  TYPE_2__* PDATA ;
typedef  char* LPTSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  CB_ADDSTRING ; 
 int /*<<< orphan*/  CB_SETITEMDATA ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  IDC_SCREENS_LIST ; 
 int /*<<< orphan*/  IDS_NONE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hApplet ; 

__attribute__((used)) static VOID
FUNC10(HWND hwndDlg, PDATA pData)
{
    HWND hwndScreenSavers = FUNC0(hwndDlg, IDC_SCREENS_LIST);
    TCHAR szSearchPath[MAX_PATH];
    TCHAR szLocalPath[MAX_PATH];
    INT i;
    ScreenSaverItem *ScreenSaverItem = NULL;
    LPTSTR lpBackSlash;

    /* Add the "None" item */
    ScreenSaverItem = pData->ScreenSaverItems;

    ScreenSaverItem->bIsScreenSaver = FALSE;

    FUNC4(hApplet,
               IDS_NONE,
               ScreenSaverItem->szDisplayName,
               sizeof(ScreenSaverItem->szDisplayName) / sizeof(TCHAR));

    i = FUNC6(hwndScreenSavers,
                    CB_ADDSTRING,
                    0,
                    (LPARAM)ScreenSaverItem->szDisplayName);

    FUNC6(hwndScreenSavers,
                CB_SETITEMDATA,
                i,
                (LPARAM)0);

    // Initialize number of items into the list
    pData->ScreenSaverCount = 1;

    // Add all the screensavers where the applet is stored.
    FUNC1(hApplet, szLocalPath, MAX_PATH);
    lpBackSlash = FUNC9(szLocalPath, FUNC7('\\'));
    if (lpBackSlash != NULL)
    {
        *lpBackSlash = '\0';
        FUNC5(hwndScreenSavers, szLocalPath, pData);
    }

    // Add all the screensavers in the C:\ReactOS\System32 directory.
    FUNC2(szSearchPath, MAX_PATH);
    if (lpBackSlash != NULL && FUNC8(szSearchPath, szLocalPath) != 0)
        FUNC5(hwndScreenSavers, szSearchPath, pData);

    // Add all the screensavers in the C:\ReactOS directory.
    FUNC3(szSearchPath, MAX_PATH);
    if (lpBackSlash != NULL && FUNC8(szSearchPath, szLocalPath) != 0)
        FUNC5(hwndScreenSavers, szSearchPath, pData);
}