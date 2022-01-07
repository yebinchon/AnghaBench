
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PKULL_M_DPAPI_MASTERKEY_CREDHIST ;


 int LocalFree (scalar_t__) ;

void kull_m_dpapi_masterkeys_credhist_delete(PKULL_M_DPAPI_MASTERKEY_CREDHIST credhist)
{
 if(credhist)
  LocalFree(credhist);
}
