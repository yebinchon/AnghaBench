
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t NameCount; int * Names; } ;
typedef TYPE_1__* PKERB_EXTERNAL_NAME ;
typedef size_t DWORD ;


 scalar_t__ LocalFree (TYPE_1__*) ;
 int kull_m_string_freeUnicodeStringBuffer (int *) ;

void kuhl_m_kerberos_ticket_freeExternalName(PKERB_EXTERNAL_NAME pName)
{
 DWORD i;
 if(pName)
 {
  for(i = 0; i < pName->NameCount; i++)
   kull_m_string_freeUnicodeStringBuffer(&pName->Names[i]);
  pName = (PKERB_EXTERNAL_NAME) LocalFree(pName);
 }
}
