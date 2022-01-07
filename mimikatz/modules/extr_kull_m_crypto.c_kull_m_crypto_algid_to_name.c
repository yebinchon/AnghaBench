
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ id; int * name; } ;
typedef int * PCWCHAR ;
typedef size_t DWORD ;
typedef scalar_t__ ALG_ID ;


 size_t ARRAYSIZE (TYPE_1__*) ;
 TYPE_1__* kull_m_crypto_calgid ;

PCWCHAR kull_m_crypto_algid_to_name(ALG_ID algid)
{
 DWORD i;
 for(i = 0; i < ARRAYSIZE(kull_m_crypto_calgid); i++)
  if(kull_m_crypto_calgid[i].id == algid)
   return kull_m_crypto_calgid[i].name;
 return ((void*)0);
}
