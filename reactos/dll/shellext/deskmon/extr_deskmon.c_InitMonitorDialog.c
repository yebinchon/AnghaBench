
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int dd ;
typedef int WPARAM ;
typedef int VOID ;
struct TYPE_16__ {int cb; } ;
struct TYPE_12__ {int * DeviceString; } ;
struct TYPE_15__ {struct TYPE_15__* Next; TYPE_10__ dd; } ;
struct TYPE_14__ {int dwMonitorCount; int hwndDlg; TYPE_3__* SelMonitor; TYPE_3__* Monitors; int pdtobj; int * lpDevModeOnInit; int * lpSelDevMode; TYPE_1__* DeskExtInterface; int * lpDisplayDevice; } ;
struct TYPE_13__ {int Context; int * (* GetCurrentMode ) (int ) ;} ;
typedef TYPE_2__* PDESKMONITOR ;
typedef TYPE_3__* PDESKMONINFO ;
typedef int * LPTSTR ;
typedef int LPARAM ;
typedef scalar_t__ INT ;
typedef int HLOCAL ;
typedef scalar_t__ DWORD ;
typedef TYPE_4__ DISPLAY_DEVICE ;
typedef scalar_t__ BOOL ;


 int CopyMemory (TYPE_10__*,TYPE_4__*,int) ;
 int DESK_EXT_DISPLAYDEVICE ;
 int DESK_EXT_MONITORNAME ;
 scalar_t__ EnumDisplayDevices (int *,int ,TYPE_4__*,int ) ;
 int GetDlgItem (int ,int ) ;
 int IDC_MONITORLIST ;
 int IDC_MONITORNAME ;
 int LB_ADDSTRING ;
 int LB_RESETCONTENT ;
 int LB_SETCURSEL ;
 int LB_SETITEMDATA ;
 int LMEM_FIXED ;
 TYPE_3__* LocalAlloc (int ,int) ;
 int LocalFree (int ) ;
 void* QueryDeskCplString (int ,int ) ;
 int RegisterClipboardFormat (int ) ;
 int SW_HIDE ;
 int SW_SHOW ;
 scalar_t__ SendDlgItemMessage (int ,int ,int ,int ,int ) ;
 int SetDlgItemText (int ,int ,int *) ;
 int ShowWindow (int ,int ) ;
 int UpdateMonitorSelection (TYPE_2__*) ;
 int UpdateRefreshFrequencyList (TYPE_2__*) ;
 int * stub1 (int ) ;

__attribute__((used)) static VOID
InitMonitorDialog(PDESKMONITOR This)
{
    PDESKMONINFO pmi, pminext, *pmilink;
    DISPLAY_DEVICE dd;
    BOOL bRet;
    INT i;
    DWORD dwIndex;


    pmi = This->Monitors;
    This->Monitors = ((void*)0);
    while (pmi != ((void*)0))
    {
        pminext = pmi->Next;
        LocalFree((HLOCAL)pmi);
        pmi = pminext;
    }

    This->SelMonitor = ((void*)0);
    This->dwMonitorCount = 0;

    if (This->lpDisplayDevice != ((void*)0))
        LocalFree((HLOCAL)This->lpDisplayDevice);

    This->lpDisplayDevice = QueryDeskCplString(This->pdtobj,
                                               RegisterClipboardFormat(DESK_EXT_DISPLAYDEVICE));

    if (This->DeskExtInterface != ((void*)0))
    {
        if (This->lpDisplayDevice != ((void*)0))
        {

            dwIndex = 0;
            pmilink = &This->Monitors;

            do
            {
                dd.cb = sizeof(dd);
                bRet = EnumDisplayDevices(This->lpDisplayDevice,
                                          dwIndex++,
                                          &dd,
                                          0);
                if (bRet)
                {
                    pmi = LocalAlloc(LMEM_FIXED,
                                     sizeof(*pmi));
                    if (pmi != ((void*)0))
                    {
                        CopyMemory(&pmi->dd,
                                   &dd,
                                   sizeof(dd));
                        pmi->Next = ((void*)0);
                        *pmilink = pmi;
                        pmilink = &pmi->Next;

                        This->dwMonitorCount++;
                    }
                }
            } while (bRet);
        }

        This->lpDevModeOnInit = This->DeskExtInterface->GetCurrentMode(This->DeskExtInterface->Context);
    }
    else
        This->lpDevModeOnInit = ((void*)0);

    This->lpSelDevMode = This->lpDevModeOnInit;


    if (This->dwMonitorCount == 0)
    {
        LPTSTR lpMonitorName;


        lpMonitorName = QueryDeskCplString(This->pdtobj,
                                           RegisterClipboardFormat(DESK_EXT_MONITORNAME));

        SetDlgItemText(This->hwndDlg,
                       IDC_MONITORNAME,
                       lpMonitorName);

        if (lpMonitorName != ((void*)0))
            LocalFree((HLOCAL)lpMonitorName);
    }
    else if (This->dwMonitorCount == 1)
    {
        This->SelMonitor = This->Monitors;
        SetDlgItemText(This->hwndDlg,
                       IDC_MONITORNAME,
                       This->Monitors->dd.DeviceString);
    }
    else
    {
        SendDlgItemMessage(This->hwndDlg,
                           IDC_MONITORLIST,
                           LB_RESETCONTENT,
                           0,
                           0);

        pmi = This->Monitors;
        while (pmi != ((void*)0))
        {
            i = (INT)SendDlgItemMessage(This->hwndDlg,
                                        IDC_MONITORLIST,
                                        LB_ADDSTRING,
                                        0,
                                        (LPARAM)pmi->dd.DeviceString);
            if (i >= 0)
            {
                SendDlgItemMessage(This->hwndDlg,
                                   IDC_MONITORLIST,
                                   LB_SETITEMDATA,
                                   (WPARAM)i,
                                   (LPARAM)pmi);

                if (This->SelMonitor == ((void*)0))
                {
                    SendDlgItemMessage(This->hwndDlg,
                                       IDC_MONITORLIST,
                                       LB_SETCURSEL,
                                       (WPARAM)i,
                                       0);

                    This->SelMonitor = pmi;
                }
            }

            pmi = pmi->Next;
        }
    }


    ShowWindow(GetDlgItem(This->hwndDlg,
                          IDC_MONITORNAME),
               (This->dwMonitorCount <= 1 ? SW_SHOW : SW_HIDE));
    ShowWindow(GetDlgItem(This->hwndDlg,
                          IDC_MONITORLIST),
               (This->dwMonitorCount > 1 ? SW_SHOW : SW_HIDE));

    UpdateRefreshFrequencyList(This);
    UpdateMonitorSelection(This);
}
