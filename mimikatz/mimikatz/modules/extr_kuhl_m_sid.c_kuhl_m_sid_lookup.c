
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int SID_NAME_USE ;
typedef int PWSTR ;
typedef int PSID ;
typedef int * PCWCHAR ;
typedef int NTSTATUS ;


 scalar_t__ ConvertStringSidToSid (int *,int *) ;
 scalar_t__ IsValidSid (int ) ;
 int LocalFree (int ) ;
 int PRINT_ERROR (char*) ;
 int PRINT_ERROR_AUTO (char*) ;
 int STATUS_SUCCESS ;
 int kprintf (char*,...) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,int **,int *) ;
 int kull_m_string_displaySID (int ) ;
 scalar_t__ kull_m_token_getNameDomainFromSID (int ,int *,int *,int *,int *) ;
 scalar_t__ kull_m_token_getSidDomainFromName (int *,int *,int *,int *,int *) ;
 int kull_m_token_getSidNameUse (int ) ;

NTSTATUS kuhl_m_sid_lookup(int argc, wchar_t * argv[])
{
 PWSTR name, domain;
 PSID pSid;
 SID_NAME_USE nameUse;
 PCWCHAR szName, szSystem = ((void*)0);
 kull_m_string_args_byName(argc, argv, L"system", &szSystem, ((void*)0));

 if(kull_m_string_args_byName(argc, argv, L"sid", &szName, ((void*)0)))
 {
  if(ConvertStringSidToSid(szName, &pSid))
  {
   kprintf(L"SID   : %s\n", szName);
   if(IsValidSid(pSid))
   {
    if(kull_m_token_getNameDomainFromSID(pSid, &name, &domain, &nameUse, szSystem))
    {
     kprintf(L"Type  : %s\n"
      L"Domain: %s\n"
      L"Name  : %s\n", kull_m_token_getSidNameUse(nameUse), domain, name);
     LocalFree(name);
     LocalFree(domain);
    }
    else PRINT_ERROR_AUTO(L"kull_m_token_getNameDomainFromSID");
   }
   else PRINT_ERROR(L"Invalid SID\n");
   LocalFree(pSid);
  }
  else PRINT_ERROR_AUTO(L"ConvertStringSidToSid");
 }
 else if(kull_m_string_args_byName(argc, argv, L"name", &szName, ((void*)0)))
 {
  kprintf(L"Name  : %s\n", szName);
  if(kull_m_token_getSidDomainFromName(szName, &pSid, &domain, &nameUse, szSystem))
  {
   kprintf(L"Type  : %s\n"
    L"Domain: %s\n"
    L"SID   : ", kull_m_token_getSidNameUse(nameUse), domain);
   kull_m_string_displaySID(pSid);
   kprintf(L"\n");
   LocalFree(pSid);
   LocalFree(domain);
  }
  else PRINT_ERROR_AUTO(L"kull_m_token_getSidDomainFromName");
 }
 else PRINT_ERROR(L"/sid or /name is missing\n");

 return STATUS_SUCCESS;
}
