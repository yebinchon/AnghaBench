
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_7__ {TYPE_2__* SelMonitor; int hwndDlg; } ;
struct TYPE_5__ {int DeviceID; } ;
struct TYPE_6__ {TYPE_1__ dd; } ;
typedef int (* PDEVICEPROPERTIES ) (int ,int *,int ,int ) ;
typedef TYPE_3__* PDESKMONITOR ;
typedef int * LPTSTR ;
typedef int * HMODULE ;
typedef int HLOCAL ;


 int FALSE ;
 int FUNC_DEVICEPROPERTIES ;
 int FreeLibrary (int *) ;
 int * GetMonitorDevInstID (int ) ;
 scalar_t__ GetProcAddress (int *,int ) ;
 int * LoadLibrary (int ) ;
 int LocalFree (int ) ;
 int TEXT (char*) ;

__attribute__((used)) static VOID
ShowMonitorProperties(PDESKMONITOR This)
{
    HMODULE hDevMgr;
    PDEVICEPROPERTIES pDeviceProperties;
    LPTSTR lpDevInstID;

    if (This->SelMonitor != ((void*)0))
    {
        lpDevInstID = GetMonitorDevInstID(This->SelMonitor->dd.DeviceID);
        if (lpDevInstID != ((void*)0))
        {
            hDevMgr = LoadLibrary(TEXT("devmgr.dll"));
            if (hDevMgr != ((void*)0))
            {
                pDeviceProperties = (PDEVICEPROPERTIES)GetProcAddress(hDevMgr,
                                                                      FUNC_DEVICEPROPERTIES);
                if (pDeviceProperties != ((void*)0))
                {
                    pDeviceProperties(This->hwndDlg,
                                       ((void*)0),
                                       This->SelMonitor->dd.DeviceID,
                                       FALSE);
                }

                FreeLibrary(hDevMgr);
            }

            LocalFree((HLOCAL)lpDevInstID);
        }
    }
}
