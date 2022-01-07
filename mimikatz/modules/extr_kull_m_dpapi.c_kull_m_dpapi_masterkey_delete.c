
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* pbKey; } ;
typedef TYPE_1__* PKULL_M_DPAPI_MASTERKEY ;


 int LocalFree (TYPE_1__*) ;

void kull_m_dpapi_masterkey_delete(PKULL_M_DPAPI_MASTERKEY masterkey)
{
 if(masterkey)
 {
  if(masterkey->pbKey)
   LocalFree(masterkey->pbKey);
  LocalFree(masterkey);
 }
}
