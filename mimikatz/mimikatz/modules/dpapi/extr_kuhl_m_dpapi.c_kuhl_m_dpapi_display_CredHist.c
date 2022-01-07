
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int guid; } ;
struct TYPE_5__ {TYPE_1__ header; int pSid; } ;
typedef int PWSTR ;
typedef TYPE_2__* PKULL_M_DPAPI_CREDHIST_ENTRY ;
typedef int LPCVOID ;


 scalar_t__ ConvertSidToStringSid (int ,int *) ;
 int LM_NTLM_HASH_LENGTH ;
 int LocalFree (int ) ;
 int SHA_DIGEST_LENGTH ;
 int kprintf (char*) ;
 int kuhl_m_dpapi_oe_credential_add (int ,int *,int ,int ,int *,int *) ;
 int kull_m_string_displayGUID (int *) ;
 int kull_m_string_displaySID (int ) ;
 int kull_m_string_wprintf_hex (int ,int ,int ) ;

void kuhl_m_dpapi_display_CredHist(PKULL_M_DPAPI_CREDHIST_ENTRY entry, LPCVOID ntlm, LPCVOID sha1)
{
 PWSTR currentStringSid;
 kprintf(L"   "); kull_m_string_displaySID(entry->pSid); kprintf(L" -- "); kull_m_string_displayGUID(&entry->header.guid); kprintf(L"\n");
 kprintf(L"   > NTLM: "); kull_m_string_wprintf_hex(ntlm, LM_NTLM_HASH_LENGTH, 0); kprintf(L"\n");
 kprintf(L"   > SHA1: "); kull_m_string_wprintf_hex(sha1, SHA_DIGEST_LENGTH, 0); kprintf(L"\n");
 if(ConvertSidToStringSid(entry->pSid, &currentStringSid))
 {
  kuhl_m_dpapi_oe_credential_add(currentStringSid, &entry->header.guid, ntlm, sha1, ((void*)0), ((void*)0));
  LocalFree(currentStringSid);
 }
}
