
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; scalar_t__ DevicePath; int * hWorkerThread; scalar_t__ dWorkerThread; int * hKeepAliveThread; scalar_t__ dKeepAliveThread; int * hBusy; } ;
typedef TYPE_1__* PBUSYLIGHT_DEVICE ;
typedef scalar_t__ BOOL ;


 int CloseHandle (int *) ;
 int ERROR_SUCCESS ;
 int FALSE ;
 int * INVALID_HANDLE_VALUE ;
 int LocalFree (TYPE_1__*) ;
 int TerminateThread (int *,int ) ;
 int free (scalar_t__) ;
 int kull_m_busylight_request_send_off (TYPE_1__*,int ) ;

void kull_m_busylight_devices_free(PBUSYLIGHT_DEVICE devices, BOOL instantOff)
{
 PBUSYLIGHT_DEVICE tmp;
 while(devices)
 {
  if(devices->hBusy)
  {
   if(instantOff && (devices->hBusy != INVALID_HANDLE_VALUE))
    kull_m_busylight_request_send_off(devices, FALSE);
   CloseHandle(devices->hBusy);
   devices->hBusy = ((void*)0);
  }
  devices->dKeepAliveThread = 0;
  if(devices->hKeepAliveThread)
  {
   TerminateThread(devices->hKeepAliveThread, ERROR_SUCCESS);
   devices->hKeepAliveThread = ((void*)0);
  }
  devices->dWorkerThread = 0;
  if(devices->hWorkerThread)
  {
   TerminateThread(devices->hWorkerThread, ERROR_SUCCESS);
   devices->hWorkerThread = ((void*)0);
  }
  if(devices->DevicePath)
   free(devices->DevicePath);
  tmp = devices->next;
  LocalFree(devices);
  devices = tmp;
 }
}
