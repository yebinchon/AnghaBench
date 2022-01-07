
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BringWindowToTop (int ) ;
 int SW_HIDE ;
 int SW_SHOW ;
 int ShowWindow (int ,int ) ;
 int TabCtrl_GetCurSel (int ) ;
 int hFreeLdrPage ;
 int hGeneralPage ;
 int hServicesPage ;
 int hStartupPage ;
 int hSystemPage ;
 int hTabWnd ;
 int hToolsPage ;

void MsConfig_OnTabWndSelChange(void)
{
    switch (TabCtrl_GetCurSel(hTabWnd)) {
    case 0:
        ShowWindow(hGeneralPage, SW_SHOW);
        ShowWindow(hSystemPage, SW_HIDE);
        ShowWindow(hFreeLdrPage, SW_HIDE);
        ShowWindow(hServicesPage, SW_HIDE);
        ShowWindow(hStartupPage, SW_HIDE);
        ShowWindow(hToolsPage, SW_HIDE);
        BringWindowToTop(hGeneralPage);
        break;
    case 1:
        ShowWindow(hGeneralPage, SW_HIDE);
        ShowWindow(hSystemPage, SW_SHOW);
        ShowWindow(hToolsPage, SW_HIDE);
        ShowWindow(hStartupPage, SW_HIDE);
        ShowWindow(hFreeLdrPage, SW_HIDE);
        ShowWindow(hServicesPage, SW_HIDE);
        BringWindowToTop(hSystemPage);
        break;
    case 2:
        ShowWindow(hGeneralPage, SW_HIDE);
        ShowWindow(hSystemPage, SW_HIDE);
        ShowWindow(hFreeLdrPage, SW_SHOW);
        ShowWindow(hServicesPage, SW_HIDE);
        ShowWindow(hStartupPage, SW_HIDE);
        ShowWindow(hToolsPage, SW_HIDE);
        BringWindowToTop(hFreeLdrPage);
        break;
    case 3:
        ShowWindow(hGeneralPage, SW_HIDE);
        ShowWindow(hSystemPage, SW_HIDE);
        ShowWindow(hFreeLdrPage, SW_HIDE);
        ShowWindow(hServicesPage, SW_SHOW);
        ShowWindow(hStartupPage, SW_HIDE);
        ShowWindow(hToolsPage, SW_HIDE);
        BringWindowToTop(hServicesPage);
        break;
    case 4:
        ShowWindow(hGeneralPage, SW_HIDE);
        ShowWindow(hSystemPage, SW_HIDE);
        ShowWindow(hFreeLdrPage, SW_HIDE);
        ShowWindow(hServicesPage, SW_HIDE);
        ShowWindow(hStartupPage, SW_SHOW);
        ShowWindow(hToolsPage, SW_HIDE);
        BringWindowToTop(hStartupPage);
        break;
    case 5:
        ShowWindow(hGeneralPage, SW_HIDE);
        ShowWindow(hSystemPage, SW_HIDE);
        ShowWindow(hFreeLdrPage, SW_HIDE);
        ShowWindow(hServicesPage, SW_HIDE);
        ShowWindow(hStartupPage, SW_HIDE);
        ShowWindow(hToolsPage, SW_SHOW);
        BringWindowToTop(hToolsPage);
        break;
    }
}
