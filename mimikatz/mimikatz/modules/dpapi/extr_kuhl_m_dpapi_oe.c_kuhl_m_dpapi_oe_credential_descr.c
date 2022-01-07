
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int md4protectedhash; int sha1hash; int md4hash; int guid; scalar_t__ sid; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef TYPE_2__* PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY ;


 int KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_GUID ;
 int KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_MD4 ;
 int KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_MD4p ;
 int KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_SHA1 ;
 int LM_NTLM_HASH_LENGTH ;
 int SHA_DIGEST_LENGTH ;
 int kprintf (char*,...) ;
 int kull_m_string_displayGUID (int *) ;
 int kull_m_string_wprintf_hex (int ,int ,int ) ;

void kuhl_m_dpapi_oe_credential_descr(PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY entry)
{
 if(entry)
 {
  if(entry->data.sid)
   kprintf(L"SID:%s", entry->data.sid);
  kprintf(L";");
  if(entry->data.flags & KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_GUID)
  {
   kprintf(L"GUID:");
   kull_m_string_displayGUID(&entry->data.guid);
  }
  kprintf(L";");
  if(entry->data.flags & KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_MD4)
  {
   kprintf(L"MD4:");
   kull_m_string_wprintf_hex(entry->data.md4hash, LM_NTLM_HASH_LENGTH, 0);
  }
  kprintf(L";");
  if(entry->data.flags & KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_SHA1)
  {
   kprintf(L"SHA1:");
   kull_m_string_wprintf_hex(entry->data.sha1hash, SHA_DIGEST_LENGTH, 0);
  }
  kprintf(L";");
  if(entry->data.flags & KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_MD4p)
  {
   kprintf(L"MD4p:");
   kull_m_string_wprintf_hex(entry->data.md4protectedhash, LM_NTLM_HASH_LENGTH, 0);
  }
  kprintf(L"\n");
 }
}
