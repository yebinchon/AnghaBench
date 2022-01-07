
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ ULONG ;
typedef int PCWCHAR ;
typedef int NTSTATUS ;


 int IOCTL_MIMIDRV_PROCESS_FULLPRIV ;
 int STATUS_SUCCESS ;
 int kull_m_kernel_mimidrv_simple_output (int ,scalar_t__*,int) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,int *,int *) ;
 scalar_t__ wcstoul (int ,int *,int ) ;

NTSTATUS kuhl_m_kernel_processPrivilege(int argc, wchar_t * argv[])
{
 PCWCHAR szPid;
 ULONG pid = 0;

 if(kull_m_string_args_byName(argc, argv, L"pid", &szPid, ((void*)0)))
  pid = wcstoul(szPid, ((void*)0), 0);

 kull_m_kernel_mimidrv_simple_output(IOCTL_MIMIDRV_PROCESS_FULLPRIV, pid ? &pid : ((void*)0), pid ? sizeof(ULONG) : 0);
 return STATUS_SUCCESS;
}
