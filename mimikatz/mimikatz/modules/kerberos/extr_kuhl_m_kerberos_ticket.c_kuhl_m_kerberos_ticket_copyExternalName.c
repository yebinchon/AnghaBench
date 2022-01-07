
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UNICODE_STRING ;
struct TYPE_5__ {int NameCount; int * Names; int NameType; } ;
typedef TYPE_1__* PKERB_EXTERNAL_NAME ;
typedef int KERB_EXTERNAL_NAME ;
typedef size_t DWORD ;
typedef int BOOL ;


 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 scalar_t__ LocalFree (TYPE_1__*) ;
 int TRUE ;
 int kull_m_string_copyUnicodeStringBuffer (int *,int *) ;

PKERB_EXTERNAL_NAME kuhl_m_kerberos_ticket_copyExternalName(PKERB_EXTERNAL_NAME pName)
{
 PKERB_EXTERNAL_NAME dest = ((void*)0);
 DWORD i;
 BOOL status = TRUE;
 if(pName)
 {
  if(dest = (PKERB_EXTERNAL_NAME) LocalAlloc(LPTR, sizeof(KERB_EXTERNAL_NAME) + ((pName->NameCount - 1) * sizeof(UNICODE_STRING))))
  {
   dest->NameType = pName->NameType;
   dest->NameCount = pName->NameCount;
   for(i = 0; i < pName->NameCount; i++)
    status &= kull_m_string_copyUnicodeStringBuffer(&pName->Names[i], &dest->Names[i]);

   if(!status)
    dest = (PKERB_EXTERNAL_NAME) LocalFree(dest);
  }
 }
 return dest;
}
