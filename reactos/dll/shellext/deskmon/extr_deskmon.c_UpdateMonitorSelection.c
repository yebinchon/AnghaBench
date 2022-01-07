
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
typedef int VOID ;
struct TYPE_3__ {int dwMonitorCount; int * SelMonitor; int hwndDlg; int * Monitors; } ;
typedef TYPE_1__* PDESKMONITOR ;
typedef int * PDESKMONINFO ;
typedef scalar_t__ INT ;


 int EnableWindow (int ,int ) ;
 int GetDlgItem (int ,int ) ;
 int IDC_MONITORLIST ;
 int IDC_MONITORPROPERTIES ;
 int LB_GETCURSEL ;
 int LB_GETITEMDATA ;
 scalar_t__ SendDlgItemMessage (int ,int ,int ,int ,int ) ;

__attribute__((used)) static VOID
UpdateMonitorSelection(PDESKMONITOR This)
{
    INT i;

    if (This->dwMonitorCount > 1)
    {
        This->SelMonitor = ((void*)0);

        i = (INT)SendDlgItemMessage(This->hwndDlg,
                                    IDC_MONITORLIST,
                                    LB_GETCURSEL,
                                    0,
                                    0);
        if (i >= 0)
        {
            This->SelMonitor = (PDESKMONINFO)SendDlgItemMessage(This->hwndDlg,
                                                                IDC_MONITORLIST,
                                                                LB_GETITEMDATA,
                                                                (WPARAM)i,
                                                                0);
        }
    }
    else
        This->SelMonitor = This->Monitors;

    EnableWindow(GetDlgItem(This->hwndDlg,
                            IDC_MONITORPROPERTIES),
                 This->SelMonitor != ((void*)0));
}
