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
struct TYPE_4__ {int /*<<< orphan*/ * pszText; void* mask; } ;
typedef  TYPE_1__ TCITEM ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FreeLdrPageWndProc ; 
 int /*<<< orphan*/  GeneralPageWndProc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_TAB ; 
 int /*<<< orphan*/  IDD_FREELDR_PAGE ; 
 int /*<<< orphan*/  IDD_GENERAL_PAGE ; 
 int /*<<< orphan*/  IDD_SERVICES_PAGE ; 
 int /*<<< orphan*/  IDD_STARTUP_PAGE ; 
 int /*<<< orphan*/  IDD_SYSTEM_PAGE ; 
 int /*<<< orphan*/  IDD_TOOLS_PAGE ; 
 int /*<<< orphan*/  IDS_MSCONFIG ; 
 int /*<<< orphan*/  IDS_TAB_FREELDR ; 
 int /*<<< orphan*/  IDS_TAB_GENERAL ; 
 int /*<<< orphan*/  IDS_TAB_SERVICES ; 
 int /*<<< orphan*/  IDS_TAB_STARTUP ; 
 int /*<<< orphan*/  IDS_TAB_SYSTEM ; 
 int /*<<< orphan*/  IDS_TAB_TOOLS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  ServicesPageWndProc ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  StartupPageWndProc ; 
 int /*<<< orphan*/  SystemPageWndProc ; 
 void* TCIF_TEXT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/  ToolsPageWndProc ; 
 int /*<<< orphan*/  hFreeLdrPage ; 
 int /*<<< orphan*/  hGeneralPage ; 
 int /*<<< orphan*/  hInst ; 
 int /*<<< orphan*/  hServicesPage ; 
 int /*<<< orphan*/  hStartupPage ; 
 int /*<<< orphan*/  hSystemPage ; 
 int /*<<< orphan*/  hTabWnd ; 
 int /*<<< orphan*/  hToolsPage ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

BOOL FUNC9(HWND hWnd)
{
    TCHAR   szTemp[256];
    TCITEM  item;

    hTabWnd = FUNC2(hWnd, IDC_TAB);
    hGeneralPage = FUNC0(hInst, FUNC4(IDD_GENERAL_PAGE), hWnd,  GeneralPageWndProc); FUNC1(hGeneralPage);
    hSystemPage = FUNC0(hInst, FUNC4(IDD_SYSTEM_PAGE), hWnd,  SystemPageWndProc); FUNC1(hSystemPage);
    hFreeLdrPage = FUNC0(hInst, FUNC4(IDD_FREELDR_PAGE), hWnd,  FreeLdrPageWndProc); FUNC1(hFreeLdrPage);
    hServicesPage = FUNC0(hInst, FUNC4(IDD_SERVICES_PAGE), hWnd,  ServicesPageWndProc); FUNC1(hServicesPage);
    hStartupPage = FUNC0(hInst, FUNC4(IDD_STARTUP_PAGE), hWnd,  StartupPageWndProc); FUNC1(hStartupPage);
    hToolsPage = FUNC0(hInst, FUNC4(IDD_TOOLS_PAGE), hWnd,  ToolsPageWndProc); FUNC1(hToolsPage);

    FUNC3(hInst, IDS_MSCONFIG, szTemp, 256);
    FUNC6(hWnd, szTemp);

    // Insert Tab Pages
    FUNC3(hInst, IDS_TAB_GENERAL, szTemp, 256);
    FUNC8(&item, 0, sizeof(TCITEM));
    item.mask = TCIF_TEXT;
    item.pszText = szTemp;
    (void)FUNC7(hTabWnd, 0, &item);

    FUNC3(hInst, IDS_TAB_SYSTEM, szTemp, 256);
    FUNC8(&item, 0, sizeof(TCITEM));
    item.mask = TCIF_TEXT;
    item.pszText = szTemp;
    (void)FUNC7(hTabWnd, 1, &item);

    FUNC3(hInst, IDS_TAB_FREELDR, szTemp, 256);
    FUNC8(&item, 0, sizeof(TCITEM));
    item.mask = TCIF_TEXT;
    item.pszText = szTemp;
    (void)FUNC7(hTabWnd, 2, &item);

    FUNC3(hInst, IDS_TAB_SERVICES, szTemp, 256);
    FUNC8(&item, 0, sizeof(TCITEM));
    item.mask = TCIF_TEXT;
    item.pszText = szTemp;
    (void)FUNC7(hTabWnd, 3, &item);

    FUNC3(hInst, IDS_TAB_STARTUP, szTemp, 256);
    FUNC8(&item, 0, sizeof(TCITEM));
    item.mask = TCIF_TEXT;
    item.pszText = szTemp;
    (void)FUNC7(hTabWnd, 4, &item);

    FUNC3(hInst, IDS_TAB_TOOLS, szTemp, 256);
    FUNC8(&item, 0, sizeof(TCITEM));
    item.mask = TCIF_TEXT;
    item.pszText = szTemp;
    (void)FUNC7(hTabWnd, 5, &item);

    FUNC5();

    return TRUE;
}