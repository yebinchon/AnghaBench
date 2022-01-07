
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int PRINT_ERROR (char*) ;
 int STATUS_INVALID_PARAMETER ;
 int kuhl_m_privilege_simple (int ) ;
 int wcstoul (int *,int *,int ) ;

NTSTATUS kuhl_m_privilege_id(int argc, wchar_t * argv[])
{
 NTSTATUS status = STATUS_INVALID_PARAMETER;
 if(argc)
  status = kuhl_m_privilege_simple(wcstoul(argv[0], ((void*)0), 0));
 else PRINT_ERROR(L"Missing \'id\'\n");
 return status;
}
