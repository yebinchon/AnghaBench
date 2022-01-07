
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_5__ {int DriverName; } ;
typedef int PKIWI_BUFFER ;
typedef TYPE_1__* PDRIVER_OBJECT ;
typedef scalar_t__ NTSTATUS ;


 scalar_t__ ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePoolWithTag (TYPE_1__**,int ) ;
 scalar_t__ IoEnumerateRegisteredFiltersList (TYPE_1__**,int,int*) ;
 scalar_t__ NT_SUCCESS (scalar_t__) ;
 int NonPagedPool ;
 int ObDereferenceObject (TYPE_1__*) ;
 int POOL_TAG ;
 scalar_t__ STATUS_BUFFER_TOO_SMALL ;
 scalar_t__ kprintf (int ,char*,int,int *) ;

NTSTATUS kkll_m_filters_list(PKIWI_BUFFER outBuffer)
{
 NTSTATUS status;
 ULONG ActualNumberDriverObjects, sizeOfDriverObjects;
 PDRIVER_OBJECT * DriverObjectList = ((void*)0);
 ULONG i;

 status = IoEnumerateRegisteredFiltersList(((void*)0), 0, &ActualNumberDriverObjects);
 if((status == STATUS_BUFFER_TOO_SMALL) && ActualNumberDriverObjects)
 {
  sizeOfDriverObjects = sizeof(PDRIVER_OBJECT) * ActualNumberDriverObjects;
  if(DriverObjectList = (PDRIVER_OBJECT *) ExAllocatePoolWithTag(NonPagedPool, sizeOfDriverObjects, POOL_TAG))
  {
   status = IoEnumerateRegisteredFiltersList(DriverObjectList, sizeOfDriverObjects, &ActualNumberDriverObjects);
   for(i = 0; NT_SUCCESS(status) && (i < ActualNumberDriverObjects); i++)
   {
    status = kprintf(outBuffer, L"[%.2u] %wZ\n",i , &(DriverObjectList[i]->DriverName));
    ObDereferenceObject(DriverObjectList[i]);
   }
   ExFreePoolWithTag(DriverObjectList, POOL_TAG);
  }
 }
 return status;
}
