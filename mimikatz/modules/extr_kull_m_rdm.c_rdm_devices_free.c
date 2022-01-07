
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; scalar_t__ DevicePath; int * hDevice; } ;
typedef TYPE_1__* PRDM_DEVICE ;


 int CloseHandle (int *) ;
 int LocalFree (TYPE_1__*) ;
 int free (scalar_t__) ;

void rdm_devices_free(PRDM_DEVICE devices)
{
 PRDM_DEVICE tmp;
 while(devices)
 {
  if(devices->hDevice)
  {
   CloseHandle(devices->hDevice);
   devices->hDevice = ((void*)0);
  }
  if(devices->DevicePath)
   free(devices->DevicePath);
  tmp = devices->next;
  LocalFree(devices);
  devices = tmp;
 }
}
