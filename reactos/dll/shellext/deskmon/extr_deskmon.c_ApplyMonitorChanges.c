
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int Context; int (* GetCurrentMode ) (int ) ;} ;
struct TYPE_5__ {int hwndDlg; int lpDevModeOnInit; int lpSelDevMode; TYPE_3__* DeskExtInterface; } ;
typedef TYPE_1__* PDESKMONITOR ;
typedef scalar_t__ LONG ;


 scalar_t__ DISP_CHANGE_RESTART ;
 scalar_t__ DISP_CHANGE_SUCCESSFUL ;
 scalar_t__ DeskCplExtDisplaySaveSettings (TYPE_3__*,int ) ;
 int GetParent (int ) ;
 int InitMonitorDialog (TYPE_1__*) ;
 scalar_t__ PSNRET_INVALID_NOCHANGEPAGE ;
 scalar_t__ PSNRET_NOERROR ;
 int PropSheet_RestartWindows (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static LONG
ApplyMonitorChanges(PDESKMONITOR This)
{
    LONG lChangeRet;

    if (This->DeskExtInterface != ((void*)0))
    {

        lChangeRet = DeskCplExtDisplaySaveSettings(This->DeskExtInterface,
                                                   This->hwndDlg);
        if (lChangeRet == DISP_CHANGE_SUCCESSFUL)
        {

            This->lpDevModeOnInit = This->DeskExtInterface->GetCurrentMode(This->DeskExtInterface->Context);
            This->lpSelDevMode = This->lpDevModeOnInit;
            return PSNRET_NOERROR;
        }
        else if (lChangeRet == DISP_CHANGE_RESTART)
        {

            PropSheet_RestartWindows(GetParent(This->hwndDlg));
            return PSNRET_NOERROR;
        }
    }

    InitMonitorDialog(This);

    return PSNRET_INVALID_NOCHANGEPAGE;
}
