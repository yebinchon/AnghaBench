
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int guid; } ;
typedef int LPCGUID ;
typedef size_t DWORD ;


 size_t ARRAYSIZE (TYPE_1__*) ;
 TYPE_1__* KUHL_M_SYSENV_GUIDSTORE ;
 scalar_t__ RtlEqualGuid (int ,int *) ;
 int kprintf (char*,int ) ;
 int kull_m_string_displayGUID (int ) ;

void kuhl_m_sysenv_display_vendorGuid(LPCGUID guid)
{
 DWORD i;
 for(i = 0; i < ARRAYSIZE(KUHL_M_SYSENV_GUIDSTORE); i++)
 {
  if(RtlEqualGuid(guid, &KUHL_M_SYSENV_GUIDSTORE[i].guid))
  {
   kprintf(L"%s - ", KUHL_M_SYSENV_GUIDSTORE[i].name);
   break;
  }
 }
 kull_m_string_displayGUID(guid);
}
