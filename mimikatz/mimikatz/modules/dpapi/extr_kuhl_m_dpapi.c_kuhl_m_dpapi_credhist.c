
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int wchar_t ;
typedef int passwordHash ;
typedef int derivedkey ;
struct TYPE_16__ {int guid; } ;
struct TYPE_19__ {int * pSid; TYPE_3__ header; } ;
struct TYPE_15__ {int flags; int * sha1hashDerived; } ;
struct TYPE_18__ {TYPE_2__ data; } ;
struct TYPE_14__ {int guid; } ;
struct TYPE_17__ {int __dwCount; TYPE_6__** entries; TYPE_1__ current; } ;
typedef int * PWSTR ;
typedef int * PSID ;
typedef TYPE_4__* PKULL_M_DPAPI_CREDHIST ;
typedef TYPE_5__* PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY ;
typedef int * PBYTE ;
typedef int NTSTATUS ;
typedef int * LPCWSTR ;
typedef int * LPCGUID ;
typedef int DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int CALG_SHA1 ;
 scalar_t__ ConvertSidToStringSid (int *,int **) ;
 scalar_t__ ConvertStringSidToSid (int *,int **) ;
 scalar_t__ FALSE ;
 int KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_SHA1 ;
 int LM_NTLM_HASH_LENGTH ;
 int LocalFree (int *) ;
 int PRINT_ERROR (char*) ;
 int PRINT_ERROR_AUTO (char*) ;
 int SHA_DIGEST_LENGTH ;
 int STATUS_SUCCESS ;
 int kprintf (char*,...) ;
 int kuhl_m_dpapi_display_CredHist (TYPE_6__*,int *,int *) ;
 int kuhl_m_dpapi_oe_credential_add (int *,int *,int *,int *,int *,int *) ;
 int kuhl_m_dpapi_oe_credential_copyEntryWithNewGuid (TYPE_5__*,int *) ;
 int kuhl_m_dpapi_oe_credential_descr (TYPE_5__*) ;
 TYPE_5__* kuhl_m_dpapi_oe_credential_get (int *,int *) ;
 scalar_t__ kull_m_crypto_hash (int ,int *,int,int *,int) ;
 scalar_t__ kull_m_crypto_hmac (int ,int *,int,int *,int,int *,int) ;
 TYPE_4__* kull_m_dpapi_credhist_create (int *,int) ;
 int kull_m_dpapi_credhist_delete (TYPE_4__*) ;
 int kull_m_dpapi_credhist_descr (int ,TYPE_4__*) ;
 scalar_t__ kull_m_dpapi_unprotect_credhist_entry_with_shaDerivedkey (TYPE_6__*,int *,int,int *,int *) ;
 scalar_t__ kull_m_file_readData (int *,int **,int*) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,int **,int *) ;
 scalar_t__ kull_m_string_stringToHex (int *,int *,int) ;
 int kull_m_string_wprintf_hex (int *,int,int ) ;
 scalar_t__ wcslen (int *) ;

NTSTATUS kuhl_m_dpapi_credhist(int argc, wchar_t * argv[])
{
 PBYTE buffer;
 DWORD szBuffer, i;
 LPCWSTR szIn = ((void*)0), szSid = ((void*)0), szHash = ((void*)0), szPassword = ((void*)0);
 PWSTR convertedSid = ((void*)0);
 PSID pSid = ((void*)0), prevSid = ((void*)0);
 LPCGUID prevGuid;
 PKULL_M_DPAPI_CREDHIST credhist;
 PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY pCredentialEntry = ((void*)0);
 BYTE passwordHash[SHA_DIGEST_LENGTH], derivedkey[SHA_DIGEST_LENGTH], sha1[SHA_DIGEST_LENGTH], ntlm[LM_NTLM_HASH_LENGTH];
 BOOL hashOk = FALSE;

 if(kull_m_string_args_byName(argc, argv, L"in", &szIn, ((void*)0)))
 {
  if(kull_m_file_readData(szIn, &buffer, &szBuffer))
  {
   if(credhist = kull_m_dpapi_credhist_create(buffer, szBuffer))
   {
    kull_m_dpapi_credhist_descr(0, credhist);

    if(kull_m_string_args_byName(argc, argv, L"sid", &szSid, ((void*)0)))
    {
     if(ConvertStringSidToSid(szSid, &pSid))
      prevSid = pSid;
     else PRINT_ERROR_AUTO(L"ConvertStringSidToSid");
    }

    if(kull_m_string_args_byName(argc, argv, L"password", &szPassword, ((void*)0)))
     hashOk = kull_m_crypto_hash(CALG_SHA1, szPassword, (DWORD) wcslen(szPassword) * sizeof(wchar_t), passwordHash, sizeof(passwordHash));
    else if(kull_m_string_args_byName(argc, argv, L"sha1", &szHash, ((void*)0)))
     hashOk = kull_m_string_stringToHex(szHash, passwordHash, sizeof(passwordHash));

    prevGuid = &credhist->current.guid;
    if(!prevSid && credhist->__dwCount)
     prevSid = credhist->entries[0]->pSid;

    for(i = 0; prevSid && (i < credhist->__dwCount); i++)
    {
     if(ConvertSidToStringSid(prevSid, &convertedSid))
     {
      pCredentialEntry = kuhl_m_dpapi_oe_credential_get(((void*)0), prevGuid);
      if(!pCredentialEntry)
       pCredentialEntry = kuhl_m_dpapi_oe_credential_get(convertedSid, ((void*)0));
      if(pCredentialEntry && (pCredentialEntry->data.flags & KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_SHA1))
      {
       kprintf(L"\n  [entry %u] with volatile cache: ", i); kuhl_m_dpapi_oe_credential_descr(pCredentialEntry);
       if(kull_m_dpapi_unprotect_credhist_entry_with_shaDerivedkey(credhist->entries[i], pCredentialEntry->data.sha1hashDerived, sizeof(pCredentialEntry->data.sha1hashDerived), ntlm, sha1))
       {
        kuhl_m_dpapi_oe_credential_copyEntryWithNewGuid(pCredentialEntry, prevGuid);
        kuhl_m_dpapi_display_CredHist(credhist->entries[i], ntlm, sha1);
       }
      }
      else if(hashOk)
      {
       kprintf(L"\n  [entry %u] with SHA1 and SID: ", i); kull_m_string_wprintf_hex(passwordHash, sizeof(passwordHash), 0); kprintf(L"\n");
       if(kull_m_crypto_hmac(CALG_SHA1, passwordHash, sizeof(passwordHash), convertedSid, (DWORD) (wcslen(convertedSid) + 1) * sizeof(wchar_t), derivedkey, sizeof(derivedkey)))
        if(kull_m_dpapi_unprotect_credhist_entry_with_shaDerivedkey(credhist->entries[i], derivedkey, sizeof(derivedkey), ntlm, sha1))
        {
         kuhl_m_dpapi_oe_credential_add(convertedSid, prevGuid, ((void*)0), passwordHash, ((void*)0), szPassword);
         kuhl_m_dpapi_display_CredHist(credhist->entries[i], ntlm, sha1);
        }
      }
      LocalFree(convertedSid);
     }
     prevGuid = &credhist->entries[i]->header.guid;
     prevSid = credhist->entries[i]->pSid;
    }

    if(pSid)
     LocalFree(pSid);

    kull_m_dpapi_credhist_delete(credhist);
   }
   LocalFree(buffer);
  }
 }
 else PRINT_ERROR(L"Input credhist file needed (/in:file)\n");
 return STATUS_SUCCESS;
}
