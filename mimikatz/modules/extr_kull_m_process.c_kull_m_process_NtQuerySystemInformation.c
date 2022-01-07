
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int SYSTEM_INFORMATION_CLASS ;
typedef scalar_t__ PVOID ;
typedef scalar_t__ NTSTATUS ;
typedef int DWORD ;


 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int LocalFree (scalar_t__) ;
 int NT_SUCCESS (scalar_t__) ;
 scalar_t__ NtQuerySystemInformation (int ,scalar_t__,int,int*) ;
 scalar_t__ STATUS_INFO_LENGTH_MISMATCH ;

NTSTATUS kull_m_process_NtQuerySystemInformation(SYSTEM_INFORMATION_CLASS informationClass, PVOID buffer, ULONG informationLength)
{
 NTSTATUS status = STATUS_INFO_LENGTH_MISMATCH;
 DWORD sizeOfBuffer, returnedLen;

 if(*(PVOID *) buffer)
 {
  status = NtQuerySystemInformation(informationClass, *(PVOID *) buffer, informationLength, &returnedLen);
 }
 else
 {
  for(sizeOfBuffer = 0x1000; (status == STATUS_INFO_LENGTH_MISMATCH) && (*(PVOID *) buffer = LocalAlloc(LPTR, sizeOfBuffer)) ; sizeOfBuffer <<= 1)
  {
   status = NtQuerySystemInformation(informationClass, *(PVOID *) buffer, sizeOfBuffer, &returnedLen);
   if(!NT_SUCCESS(status))
    LocalFree(*(PVOID *) buffer);
  }
 }
 return status;
}
