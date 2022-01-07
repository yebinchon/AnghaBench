
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int ARRAYSIZE (int *) ;
 int * KUHL_M_SYSENV_ATTRIBUTES ;
 int kprintf (char*,int ) ;

void kuhl_m_sysenv_display_attributes(DWORD attributes)
{
 DWORD i;
 for(i = 0; i < ARRAYSIZE(KUHL_M_SYSENV_ATTRIBUTES); i++)
  if((1 << i) & attributes)
   kprintf(L"%s, ", KUHL_M_SYSENV_ATTRIBUTES[i]);
}
