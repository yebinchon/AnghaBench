
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t id; scalar_t__ name; } ;
typedef scalar_t__ PCWSTR ;
typedef size_t DWORD ;


 size_t ARRAYSIZE (TYPE_1__*) ;
 scalar_t__ _wcsicmp (scalar_t__,scalar_t__) ;
 TYPE_1__* kull_m_crypto_provider_types ;

DWORD kull_m_crypto_provider_type_to_dword(PCWSTR name)
{
 DWORD i;
 if(name)
  for(i = 0; i < ARRAYSIZE(kull_m_crypto_provider_types); i++)
   if((_wcsicmp(name, kull_m_crypto_provider_types[i].name) == 0) || (_wcsicmp(name, kull_m_crypto_provider_types[i].name + 5) == 0))
    return kull_m_crypto_provider_types[i].id;
 return 0;
}
