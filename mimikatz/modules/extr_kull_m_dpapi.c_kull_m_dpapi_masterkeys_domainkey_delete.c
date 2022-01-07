
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* pbAccesscheck; struct TYPE_4__* pbSecret; } ;
typedef TYPE_1__* PKULL_M_DPAPI_MASTERKEY_DOMAINKEY ;


 int LocalFree (TYPE_1__*) ;

void kull_m_dpapi_masterkeys_domainkey_delete(PKULL_M_DPAPI_MASTERKEY_DOMAINKEY domainkey)
{
 if(domainkey)
 {
  if(domainkey->pbSecret)
   LocalFree(domainkey->pbSecret);
  if(domainkey->pbAccesscheck)
   LocalFree(domainkey->pbAccesscheck);
  LocalFree(domainkey);
 }
}
