
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_4__ {size_t HandleCount; int * Handles; } ;
typedef int PVOID ;
typedef TYPE_1__* PSYSTEM_HANDLE_INFORMATION ;
typedef scalar_t__ (* PKULL_M_SYSTEM_HANDLE_ENUM_CALLBACK ) (int *,int ) ;
typedef int NTSTATUS ;


 int LocalFree (TYPE_1__*) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int SystemHandleInformation ;
 int kull_m_process_NtQuerySystemInformation (int ,TYPE_1__**,int ) ;

NTSTATUS kull_m_handle_getHandles(PKULL_M_SYSTEM_HANDLE_ENUM_CALLBACK callBack, PVOID pvArg)
{
 NTSTATUS status;
 ULONG i;
 PSYSTEM_HANDLE_INFORMATION buffer = ((void*)0);

 status = kull_m_process_NtQuerySystemInformation(SystemHandleInformation, &buffer, 0);
 if(NT_SUCCESS(status))
 {
  for(i = 0; (i < buffer->HandleCount) && callBack(&buffer->Handles[i], pvArg); i++);
  LocalFree(buffer);
 }
 return status;
}
