
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int digest ;
typedef int * PVOID ;
typedef int * PSID ;
typedef scalar_t__ LPCGUID ;
typedef int DWORD ;
typedef int BYTE ;


 int CALG_SHA1 ;
 int LocalFree (int *) ;
 int SHA_DIGEST_LENGTH ;
 int kprintf (char*) ;
 int kuhl_m_dpapi_oe_masterkey_add (scalar_t__,int *,int) ;
 scalar_t__ kull_m_crypto_hash (int ,int *,int,int *,int) ;
 int kull_m_string_displaySID (int *) ;
 int kull_m_string_wprintf_hex (int *,int,int ) ;

void kuhl_m_dpapi_display_MasterkeyInfosAndFree(LPCGUID guid, PVOID data, DWORD dataLen, PSID sid)
{
 BYTE digest[SHA_DIGEST_LENGTH];

 kprintf(L"  key : ");
 kull_m_string_wprintf_hex(data, dataLen, 0);
 kprintf(L"\n");
 if(kull_m_crypto_hash(CALG_SHA1, data, dataLen, digest, sizeof(digest)))
 {
  kprintf(L"  sha1: ");
  kull_m_string_wprintf_hex(digest, sizeof(digest), 0);
  kprintf(L"\n");
  if(guid)
   kuhl_m_dpapi_oe_masterkey_add(guid, digest, sizeof(digest));
 }
 LocalFree(data);
 if(sid)
 {
  kprintf(L"  sid : ");
  kull_m_string_displaySID(sid);
  kprintf(L"\n");
  LocalFree(sid);
 }
}
