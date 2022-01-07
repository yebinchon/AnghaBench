
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int ioctlCode; int (* pCommand ) (int,int **) ;int command; } ;
typedef int NTSTATUS ;
typedef int DWORD ;
typedef int BOOL ;


 unsigned short ARRAYSIZE (TYPE_1__*) ;
 int ** CommandLineToArgvW (int *,int*) ;
 int FALSE ;
 int IOCTL_MIMIDRV_RAW ;
 int STATUS_SUCCESS ;
 scalar_t__ _wcsicmp (int *,int ) ;
 TYPE_1__* kuhl_k_c_kernel ;
 int kull_m_kernel_mimidrv_simple_output (int ,int *,int) ;
 int stub1 (int,int **) ;
 scalar_t__ wcslen (int *) ;

NTSTATUS kuhl_m_kernel_do(wchar_t * input)
{
 NTSTATUS status = STATUS_SUCCESS;
 int argc;
 wchar_t ** argv = CommandLineToArgvW(input, &argc);
 unsigned short indexCommand;
 BOOL commandFound = FALSE;

 if(argv && (argc > 0))
 {
  for(indexCommand = 0; !commandFound && (indexCommand < ARRAYSIZE(kuhl_k_c_kernel)); indexCommand++)
  {
   if(commandFound = _wcsicmp(argv[0], kuhl_k_c_kernel[indexCommand].command) == 0)
   {
    if(kuhl_k_c_kernel[indexCommand].pCommand)
     status = kuhl_k_c_kernel[indexCommand].pCommand(argc - 1, argv + 1);
    else
     kull_m_kernel_mimidrv_simple_output(kuhl_k_c_kernel[indexCommand].ioctlCode, ((void*)0), 0);
   }
  }
  if(!commandFound)
   kull_m_kernel_mimidrv_simple_output(IOCTL_MIMIDRV_RAW, input, (DWORD) (wcslen(input) + 1) * sizeof(wchar_t));
 }
 return status;
}
