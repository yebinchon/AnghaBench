
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int flags; int sha1hashDerived; scalar_t__ sid; int * sha1hash; int md4hashDerived; int * md4hash; int guid; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef TYPE_2__* PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY ;
typedef scalar_t__ LPCWSTR ;
typedef scalar_t__ LPCVOID ;
typedef scalar_t__ LPCGUID ;
typedef int GUID ;
typedef int DWORD ;
typedef int BOOL ;


 int CALG_MD4 ;
 int CALG_SHA1 ;
 int KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_GUID ;
 int KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_MD4 ;
 int KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_SHA1 ;
 int LM_NTLM_HASH_LENGTH ;
 int RtlCopyMemory (int *,scalar_t__,int) ;
 int SHA_DIGEST_LENGTH ;
 int TRUE ;
 int kull_m_crypto_hash (int ,scalar_t__,int,int *,int) ;
 scalar_t__ kull_m_crypto_hmac (int ,int *,int,scalar_t__,int,int ,int) ;
 scalar_t__ wcslen (scalar_t__) ;

BOOL kuhl_m_dpapi_oe_credential_addtoEntry(PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY entry, LPCGUID guid, LPCVOID md4hash, LPCVOID sha1hash, LPCVOID md4protectedhash, LPCWSTR password)
{
 DWORD SidLen, PasswordLen;
 if(entry)
 {
  SidLen = (DWORD) wcslen(entry->data.sid) * sizeof(wchar_t);
  if(!(entry->data.flags & KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_GUID) && guid)
  {
   RtlCopyMemory(&entry->data.guid, guid, sizeof(GUID));
   entry->data.flags |= KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_GUID;
  }
  if(password)
   PasswordLen = (DWORD) wcslen(password) * sizeof(wchar_t);

  if(!(entry->data.flags & KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_MD4) && (md4hash || password))
  {
   if(md4hash)
    RtlCopyMemory(entry->data.md4hash, md4hash, LM_NTLM_HASH_LENGTH);
   else
    kull_m_crypto_hash(CALG_MD4, password, PasswordLen, entry->data.md4hash, LM_NTLM_HASH_LENGTH);

   if(kull_m_crypto_hmac(CALG_SHA1, entry->data.md4hash, LM_NTLM_HASH_LENGTH, entry->data.sid, SidLen + sizeof(wchar_t), entry->data.md4hashDerived, SHA_DIGEST_LENGTH))
    entry->data.flags |= KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_MD4;
  }
  if(!(entry->data.flags & KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_SHA1) && (sha1hash || password))
  {
   if(sha1hash)
    RtlCopyMemory(entry->data.sha1hash, sha1hash, SHA_DIGEST_LENGTH);
   else
    kull_m_crypto_hash(CALG_SHA1, password, PasswordLen, entry->data.sha1hash, SHA_DIGEST_LENGTH);

   kull_m_crypto_hmac(CALG_SHA1, entry->data.sha1hash, SHA_DIGEST_LENGTH, entry->data.sid, SidLen + sizeof(wchar_t), entry->data.sha1hashDerived, SHA_DIGEST_LENGTH);
   entry->data.flags |= KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_SHA1;
  }
 }
 return TRUE;
}
