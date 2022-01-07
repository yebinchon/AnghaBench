
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ NextEntryOffset; } ;
typedef int PVOID ;
typedef TYPE_1__* PSYSTEM_PROCESS_INFORMATION ;
typedef scalar_t__ (* PKULL_M_PROCESS_ENUM_CALLBACK ) (TYPE_1__*,int ) ;
typedef scalar_t__ PBYTE ;
typedef int NTSTATUS ;


 int LocalFree (TYPE_1__*) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int SystemProcessInformation ;
 int kull_m_process_NtQuerySystemInformation (int ,TYPE_1__**,int ) ;

NTSTATUS kull_m_process_getProcessInformation(PKULL_M_PROCESS_ENUM_CALLBACK callBack, PVOID pvArg)
{
 NTSTATUS status;
 PSYSTEM_PROCESS_INFORMATION buffer = ((void*)0), myInfos;

 status = kull_m_process_NtQuerySystemInformation(SystemProcessInformation, &buffer, 0);

 if(NT_SUCCESS(status))
 {
  for(myInfos = buffer; callBack(myInfos, pvArg) && myInfos->NextEntryOffset ; myInfos = (PSYSTEM_PROCESS_INFORMATION) ((PBYTE) myInfos + myInfos->NextEntryOffset));
  LocalFree(buffer);
 }
 return status;
}
