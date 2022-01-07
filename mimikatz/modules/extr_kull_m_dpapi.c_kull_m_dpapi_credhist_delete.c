
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t __dwCount; int * entries; } ;
typedef TYPE_1__* PKULL_M_DPAPI_CREDHIST ;
typedef size_t DWORD ;


 int LocalFree (TYPE_1__*) ;
 int kull_m_dpapi_credhist_entry_delete (int ) ;

void kull_m_dpapi_credhist_delete(PKULL_M_DPAPI_CREDHIST credhist)
{
 DWORD i;
 if(credhist)
 {
  for(i = 0; i < credhist->__dwCount; i++)
   kull_m_dpapi_credhist_entry_delete(credhist->entries[i]);
  LocalFree(credhist);
 }
}
