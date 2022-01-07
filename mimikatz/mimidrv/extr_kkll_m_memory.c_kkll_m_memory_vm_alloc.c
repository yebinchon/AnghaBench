
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PVOID ;
typedef int NTSTATUS ;
typedef int DWORD ;


 int ExAllocatePoolWithTag (int ,int ,int ) ;
 int NonPagedPool ;
 int POOL_TAG ;
 int STATUS_DATA_NOT_ACCEPTED ;
 int STATUS_MEMORY_NOT_ALLOCATED ;
 int STATUS_SUCCESS ;

NTSTATUS kkll_m_memory_vm_alloc(DWORD Size, PVOID *Addr)
{
 NTSTATUS status = STATUS_DATA_NOT_ACCEPTED;
 if(Addr)
 {
  if(*Addr = ExAllocatePoolWithTag(NonPagedPool, Size, POOL_TAG))
   status = STATUS_SUCCESS;
  else
   status = STATUS_MEMORY_NOT_ALLOCATED;
 }
 return status;
}
