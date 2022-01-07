
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pszText; void* mask; } ;
typedef TYPE_1__ TCITEM ;
typedef int TCHAR ;
typedef int HWND ;
typedef int BOOL ;


 int CreateDialog (int ,int ,int ,int ) ;
 int EnableDialogTheme (int ) ;
 int FreeLdrPageWndProc ;
 int GeneralPageWndProc ;
 int GetDlgItem (int ,int ) ;
 int IDC_TAB ;
 int IDD_FREELDR_PAGE ;
 int IDD_GENERAL_PAGE ;
 int IDD_SERVICES_PAGE ;
 int IDD_STARTUP_PAGE ;
 int IDD_SYSTEM_PAGE ;
 int IDD_TOOLS_PAGE ;
 int IDS_MSCONFIG ;
 int IDS_TAB_FREELDR ;
 int IDS_TAB_GENERAL ;
 int IDS_TAB_SERVICES ;
 int IDS_TAB_STARTUP ;
 int IDS_TAB_SYSTEM ;
 int IDS_TAB_TOOLS ;
 int LoadString (int ,int ,int *,int) ;
 int MAKEINTRESOURCE (int ) ;
 int MsConfig_OnTabWndSelChange () ;
 int ServicesPageWndProc ;
 int SetWindowText (int ,int *) ;
 int StartupPageWndProc ;
 int SystemPageWndProc ;
 void* TCIF_TEXT ;
 int TRUE ;
 int TabCtrl_InsertItem (int ,int,TYPE_1__*) ;
 int ToolsPageWndProc ;
 int hFreeLdrPage ;
 int hGeneralPage ;
 int hInst ;
 int hServicesPage ;
 int hStartupPage ;
 int hSystemPage ;
 int hTabWnd ;
 int hToolsPage ;
 int memset (TYPE_1__*,int ,int) ;

BOOL OnCreate(HWND hWnd)
{
    TCHAR szTemp[256];
    TCITEM item;

    hTabWnd = GetDlgItem(hWnd, IDC_TAB);
    hGeneralPage = CreateDialog(hInst, MAKEINTRESOURCE(IDD_GENERAL_PAGE), hWnd, GeneralPageWndProc); EnableDialogTheme(hGeneralPage);
    hSystemPage = CreateDialog(hInst, MAKEINTRESOURCE(IDD_SYSTEM_PAGE), hWnd, SystemPageWndProc); EnableDialogTheme(hSystemPage);
    hFreeLdrPage = CreateDialog(hInst, MAKEINTRESOURCE(IDD_FREELDR_PAGE), hWnd, FreeLdrPageWndProc); EnableDialogTheme(hFreeLdrPage);
    hServicesPage = CreateDialog(hInst, MAKEINTRESOURCE(IDD_SERVICES_PAGE), hWnd, ServicesPageWndProc); EnableDialogTheme(hServicesPage);
    hStartupPage = CreateDialog(hInst, MAKEINTRESOURCE(IDD_STARTUP_PAGE), hWnd, StartupPageWndProc); EnableDialogTheme(hStartupPage);
    hToolsPage = CreateDialog(hInst, MAKEINTRESOURCE(IDD_TOOLS_PAGE), hWnd, ToolsPageWndProc); EnableDialogTheme(hToolsPage);

    LoadString(hInst, IDS_MSCONFIG, szTemp, 256);
    SetWindowText(hWnd, szTemp);


    LoadString(hInst, IDS_TAB_GENERAL, szTemp, 256);
    memset(&item, 0, sizeof(TCITEM));
    item.mask = TCIF_TEXT;
    item.pszText = szTemp;
    (void)TabCtrl_InsertItem(hTabWnd, 0, &item);

    LoadString(hInst, IDS_TAB_SYSTEM, szTemp, 256);
    memset(&item, 0, sizeof(TCITEM));
    item.mask = TCIF_TEXT;
    item.pszText = szTemp;
    (void)TabCtrl_InsertItem(hTabWnd, 1, &item);

    LoadString(hInst, IDS_TAB_FREELDR, szTemp, 256);
    memset(&item, 0, sizeof(TCITEM));
    item.mask = TCIF_TEXT;
    item.pszText = szTemp;
    (void)TabCtrl_InsertItem(hTabWnd, 2, &item);

    LoadString(hInst, IDS_TAB_SERVICES, szTemp, 256);
    memset(&item, 0, sizeof(TCITEM));
    item.mask = TCIF_TEXT;
    item.pszText = szTemp;
    (void)TabCtrl_InsertItem(hTabWnd, 3, &item);

    LoadString(hInst, IDS_TAB_STARTUP, szTemp, 256);
    memset(&item, 0, sizeof(TCITEM));
    item.mask = TCIF_TEXT;
    item.pszText = szTemp;
    (void)TabCtrl_InsertItem(hTabWnd, 4, &item);

    LoadString(hInst, IDS_TAB_TOOLS, szTemp, 256);
    memset(&item, 0, sizeof(TCITEM));
    item.mask = TCIF_TEXT;
    item.pszText = szTemp;
    (void)TabCtrl_InsertItem(hTabWnd, 5, &item);

    MsConfig_OnTabWndSelChange();

    return TRUE;
}
