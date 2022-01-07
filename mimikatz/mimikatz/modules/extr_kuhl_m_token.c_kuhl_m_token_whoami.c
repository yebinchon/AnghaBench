
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;
typedef int HANDLE ;


 int CloseHandle (int ) ;
 scalar_t__ ERROR_NO_TOKEN ;
 int GetCurrentProcess () ;
 int GetCurrentThread () ;
 scalar_t__ GetLastError () ;
 scalar_t__ OpenProcessToken (int ,int ,int *) ;
 scalar_t__ OpenThreadToken (int ,int ,int ,int *) ;
 int PRINT_ERROR_AUTO (char*) ;
 int STATUS_SUCCESS ;
 int TOKEN_QUERY ;
 int TRUE ;
 int kprintf (char*) ;
 int kuhl_m_token_displayAccount (int ,int) ;

NTSTATUS kuhl_m_token_whoami(int argc, wchar_t * argv[])
{
 HANDLE hToken;
 kprintf(L" * Process Token : ");
 if(OpenProcessToken(GetCurrentProcess(), TOKEN_QUERY, &hToken))
 {
  kuhl_m_token_displayAccount(hToken, argc);
  CloseHandle(hToken);
 }
 else PRINT_ERROR_AUTO(L"OpenProcessToken");

 kprintf(L" * Thread Token  : ");
 if(OpenThreadToken(GetCurrentThread(), TOKEN_QUERY, TRUE, &hToken))
 {
  kuhl_m_token_displayAccount(hToken, argc);
  CloseHandle(hToken);
 }
 else if(GetLastError() == ERROR_NO_TOKEN)
  kprintf(L"no token\n");
 else PRINT_ERROR_AUTO(L"OpenThreadToken");

 return STATUS_SUCCESS;
}
