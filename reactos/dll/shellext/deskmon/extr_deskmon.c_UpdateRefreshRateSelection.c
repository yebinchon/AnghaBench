
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WPARAM ;
typedef int VOID ;
struct TYPE_6__ {scalar_t__ lpSelDevMode; int hwndDlg; TYPE_1__* DeskExtInterface; } ;
struct TYPE_5__ {int Context; int (* SetCurrentMode ) (int ,scalar_t__) ;} ;
typedef scalar_t__ PDEVMODEW ;
typedef TYPE_2__* PDESKMONITOR ;
typedef scalar_t__ INT ;


 int CB_GETCURSEL ;
 int CB_GETITEMDATA ;
 int GetParent (int ) ;
 int IDC_REFRESHRATE ;
 int PropSheet_Changed (int ,int ) ;
 scalar_t__ SendDlgItemMessage (int ,int ,int ,int ,int ) ;
 int UpdateRefreshFrequencyList (TYPE_2__*) ;
 int stub1 (int ,scalar_t__) ;

__attribute__((used)) static VOID
UpdateRefreshRateSelection(PDESKMONITOR This)
{
    PDEVMODEW lpCurrentDevMode;
    INT i;

    if (This->DeskExtInterface != ((void*)0))
    {
        i = (INT)SendDlgItemMessage(This->hwndDlg,
                                    IDC_REFRESHRATE,
                                    CB_GETCURSEL,
                                    0,
                                    0);
        if (i >= 0)
        {
            lpCurrentDevMode = This->lpSelDevMode;
            This->lpSelDevMode = (PDEVMODEW)SendDlgItemMessage(This->hwndDlg,
                                                               IDC_REFRESHRATE,
                                                               CB_GETITEMDATA,
                                                               (WPARAM)i,
                                                               0);

            if (This->lpSelDevMode != ((void*)0) && This->lpSelDevMode != lpCurrentDevMode)
            {
                This->DeskExtInterface->SetCurrentMode(This->DeskExtInterface->Context,
                                                       This->lpSelDevMode);

                UpdateRefreshFrequencyList(This);

                (void)PropSheet_Changed(GetParent(This->hwndDlg),
                                        This->hwndDlg);
            }
        }
    }
}
