
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; scalar_t__ DevicePath; int * hDevice; } ;
typedef TYPE_1__* PSR98_DEVICE ;


 int CloseHandle (int *) ;
 int LocalFree (TYPE_1__*) ;
 int free (scalar_t__) ;

void sr98_devices_free(PSR98_DEVICE devices)
{
 PSR98_DEVICE tmp;
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
