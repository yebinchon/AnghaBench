
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UNICODE_STRING ;
struct TYPE_2__ {char* Name; int Attributes; int ValueLength; scalar_t__ ValueOffset; int VendorGuid; } ;
typedef int SIZE_T ;
typedef int (* PZWSETSYSTEMENVIRONMENTVALUEEX ) (int *,int *,scalar_t__,int ,int ) ;
typedef int PVOID ;
typedef scalar_t__ PUCHAR ;
typedef TYPE_1__* PMIMIDRV_VARIABLE_NAME_AND_VALUE ;
typedef int PKIWI_BUFFER ;
typedef int NTSTATUS ;


 scalar_t__ MmGetSystemRoutineAddress (int *) ;
 int RtlInitUnicodeString (int *,char*) ;
 int STATUS_NOT_FOUND ;

NTSTATUS kkll_m_sysenvset(SIZE_T szBufferIn, PVOID bufferIn, PKIWI_BUFFER outBuffer)
{
 NTSTATUS status = STATUS_NOT_FOUND;
 UNICODE_STRING uZwSetSystemEnvironmentVariableEx, uVar;
 PZWSETSYSTEMENVIRONMENTVALUEEX ZwSetSystemEnvironmentValueEx;
 PMIMIDRV_VARIABLE_NAME_AND_VALUE vnv = (PMIMIDRV_VARIABLE_NAME_AND_VALUE) bufferIn;
 RtlInitUnicodeString(&uZwSetSystemEnvironmentVariableEx, L"ZwSetSystemEnvironmentValueEx");
 RtlInitUnicodeString(&uVar, vnv->Name);
 if(ZwSetSystemEnvironmentValueEx = (PZWSETSYSTEMENVIRONMENTVALUEEX) MmGetSystemRoutineAddress(&uZwSetSystemEnvironmentVariableEx))
  status = ZwSetSystemEnvironmentValueEx(&uVar, &vnv->VendorGuid, (PUCHAR) vnv + vnv->ValueOffset, vnv->ValueLength, vnv->Attributes);
 return status;
}
