
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;
typedef scalar_t__ (* KUHL_M_SERVICE_FUNC ) (int *) ;
typedef scalar_t__ DWORD ;


 scalar_t__ KULL_M_WIN_BUILD_7 ;
 scalar_t__ MIMIKATZ_NT_BUILD_NUMBER ;
 int PRINT_ERROR (char*) ;
 int PRINT_ERROR_AUTO (char*) ;
 int STATUS_SUCCESS ;
 int kprintf (char*,...) ;
 int kuhl_service_sendcontrol_inprocess (int *,scalar_t__) ;

NTSTATUS genericFunction(KUHL_M_SERVICE_FUNC function, wchar_t * text, int argc, wchar_t * argv[], DWORD dwControl)
{
 if(argc)
 {
  kprintf(L"%s \'%s\' service : ", text, argv[0]);
  if(argc == 1)
  {
   if(function(argv[0]))
    kprintf(L"OK\n");
   else PRINT_ERROR_AUTO(L"Service operation");
  }







 }
 else PRINT_ERROR(L"Missing service name argument\n");

 return STATUS_SUCCESS;
}
