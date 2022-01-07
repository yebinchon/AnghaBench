
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int HighPart; int LowPart; } ;
typedef int NTSTATUS ;
typedef TYPE_1__ LUID ;


 scalar_t__ LookupPrivilegeValue (int *,int *,TYPE_1__*) ;
 int PRINT_ERROR (char*,...) ;
 int PRINT_ERROR_AUTO (char*) ;
 int STATUS_INVALID_PARAMETER ;
 int kuhl_m_privilege_simple (int ) ;

NTSTATUS kuhl_m_privilege_name(int argc, wchar_t * argv[])
{
 NTSTATUS status = STATUS_INVALID_PARAMETER;
 LUID luid;
 if(argc)
 {
  if(LookupPrivilegeValue(((void*)0), argv[0], &luid))
  {
   if(!luid.HighPart)
    status = kuhl_m_privilege_simple(luid.LowPart);
   else PRINT_ERROR(L"LUID high part is %u\n", luid.HighPart);
  }
  else PRINT_ERROR_AUTO(L"LookupPrivilegeValue");
 }
 else PRINT_ERROR(L"Missing \'name\'\n");
 return status;
}
