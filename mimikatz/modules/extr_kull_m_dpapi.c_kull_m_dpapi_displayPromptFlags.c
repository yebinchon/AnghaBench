
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int ARRAYSIZE (int *) ;
 int * DPAPIPromptFlagsToStrings ;
 int kprintf (char*,int ) ;

void kull_m_dpapi_displayPromptFlags(DWORD flags)
{
 DWORD i;
 for(i = 0; i < ARRAYSIZE(DPAPIPromptFlagsToStrings); i++)
  if((flags >> i) & 1)
   kprintf(L"%s ; ", DPAPIPromptFlagsToStrings[i]);
}
