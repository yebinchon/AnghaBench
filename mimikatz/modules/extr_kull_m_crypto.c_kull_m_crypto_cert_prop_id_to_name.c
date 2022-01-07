
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t const id; char* name; } ;
typedef char* PCWCHAR ;
typedef size_t DWORD ;


 size_t ARRAYSIZE (TYPE_1__*) ;
 size_t const CERT_FIRST_USER_PROP_ID ;
 size_t const CERT_LAST_RESERVED_PROP_ID ;
 size_t const CERT_LAST_USER_PROP_ID ;
 TYPE_1__* kull_m_crypto_cert_prop_id ;

PCWCHAR kull_m_crypto_cert_prop_id_to_name(const DWORD propId)
{
 DWORD i;
 PCWCHAR result = ((void*)0);
 for(i = 0; i < ARRAYSIZE(kull_m_crypto_cert_prop_id); i++)
  if(kull_m_crypto_cert_prop_id[i].id == propId)
  {
   result = kull_m_crypto_cert_prop_id[i].name;
   break;
  }

 if(!result)
 {
  if((propId >= 36) && (propId <= 62))
   result = L"CERT_unk_future_use";
  else if(propId == 63)
   result = L"CERT_unk_63_maybe_future_use";
  else if ((propId >= 116) && (propId <= CERT_LAST_RESERVED_PROP_ID))
   result = L"CERT_reserved_prop_id";
  else if ((propId >= CERT_FIRST_USER_PROP_ID) && (propId <= CERT_LAST_USER_PROP_ID))
   result = L"CERT_user_prop_id";
 }
 return result + 5;
}
