
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * realname; scalar_t__ name; } ;
typedef scalar_t__ PCWSTR ;
typedef int * PCWCHAR ;
typedef size_t DWORD ;


 size_t ARRAYSIZE (TYPE_1__*) ;
 scalar_t__ _wcsicmp (scalar_t__,scalar_t__) ;
 TYPE_1__* kull_m_crypto_provider_names ;

PCWCHAR kull_m_crypto_provider_to_realname(PCWSTR name)
{
 DWORD i;
 if(name)
  for(i = 0; i < ARRAYSIZE(kull_m_crypto_provider_names); i++)
   if((_wcsicmp(name, kull_m_crypto_provider_names[i].name) == 0) || (_wcsicmp(name, kull_m_crypto_provider_names[i].name + 3) == 0))
    return kull_m_crypto_provider_names[i].realname;
 return ((void*)0);
}
