
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PIRP ;
typedef int PDEVICE_OBJECT ;
typedef int NTSTATUS ;


 int STATUS_NOT_SUPPORTED ;

NTSTATUS UnSupported(PDEVICE_OBJECT DeviceObject, PIRP Irp)
{
 return STATUS_NOT_SUPPORTED;
}
