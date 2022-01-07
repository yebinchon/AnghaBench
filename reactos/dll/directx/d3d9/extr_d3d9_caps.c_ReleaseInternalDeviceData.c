
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int hDirectDrawLocal; } ;
struct TYPE_4__ {TYPE_3__* pUnknown6BC; } ;
typedef TYPE_1__* LPD3D9_DEVICEDATA ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_3__*) ;
 int OsThunkDdDeleteDirectDrawObject (int ) ;
 int g_NumDevices ;

__attribute__((used)) static void ReleaseInternalDeviceData(LPD3D9_DEVICEDATA pDeviceData)
{
    OsThunkDdDeleteDirectDrawObject(pDeviceData->pUnknown6BC->hDirectDrawLocal);

    HeapFree(GetProcessHeap(), 0, pDeviceData->pUnknown6BC);
    pDeviceData->pUnknown6BC = ((void*)0);

    --g_NumDevices;
}
