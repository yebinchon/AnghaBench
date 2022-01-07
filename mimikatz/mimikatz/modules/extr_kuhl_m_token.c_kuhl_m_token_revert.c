
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int PRINT_ERROR_AUTO (char*) ;
 int STATUS_SUCCESS ;
 scalar_t__ SetThreadToken (int *,int *) ;
 int kuhl_m_token_whoami (int ,int *) ;

NTSTATUS kuhl_m_token_revert(int argc, wchar_t * argv[])
{
 if(SetThreadToken(((void*)0), ((void*)0)))
  kuhl_m_token_whoami(0, ((void*)0));
 else PRINT_ERROR_AUTO(L"SetThreadToken");
 return STATUS_SUCCESS;
}
