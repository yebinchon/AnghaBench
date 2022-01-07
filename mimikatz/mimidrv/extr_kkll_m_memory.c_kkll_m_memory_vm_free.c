
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PVOID ;
typedef int NTSTATUS ;


 int ExFreePoolWithTag (scalar_t__,int ) ;
 int POOL_TAG ;
 int STATUS_DATA_NOT_ACCEPTED ;
 int STATUS_SUCCESS ;

NTSTATUS kkll_m_memory_vm_free(PVOID Addr)
{
 NTSTATUS status = STATUS_DATA_NOT_ACCEPTED;
 if(Addr)
 {
  ExFreePoolWithTag(Addr, POOL_TAG);
  status = STATUS_SUCCESS;
 }
 return status;
}
