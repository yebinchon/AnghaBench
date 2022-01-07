
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* pSecret; struct TYPE_4__* pSid; } ;
typedef TYPE_1__* PKULL_M_DPAPI_CREDHIST_ENTRY ;


 int LocalFree (TYPE_1__*) ;

void kull_m_dpapi_credhist_entry_delete(PKULL_M_DPAPI_CREDHIST_ENTRY entry)
{
 if(entry)
 {
  if(entry->pSid)
   LocalFree(entry->pSid);
  if(entry->pSecret)
   LocalFree(entry->pSecret);
  LocalFree(entry);
 }
}
