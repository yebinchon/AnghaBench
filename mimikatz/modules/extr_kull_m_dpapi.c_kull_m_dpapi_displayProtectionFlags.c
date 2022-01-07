
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int ARRAYSIZE (char**) ;
 int CRYPTPROTECT_SYSTEM ;
 char** DPAPIProtectFlagsToStrings ;
 int kprintf (char*,char*) ;

void kull_m_dpapi_displayProtectionFlags(DWORD flags)
{
 DWORD i;
 for(i = 0; i < ARRAYSIZE(DPAPIProtectFlagsToStrings); i++)
  if((flags >> i) & 1)
   kprintf(L"%s ; ", DPAPIProtectFlagsToStrings[i]);
 if(flags & CRYPTPROTECT_SYSTEM)
  kprintf(L"%s ; ", L"system");
}
