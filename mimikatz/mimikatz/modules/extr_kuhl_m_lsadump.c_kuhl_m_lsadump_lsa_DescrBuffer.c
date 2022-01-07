
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_14__ {int DefaultSaltLength; int OldCredentialCount; int CredentialCount; scalar_t__ DefaultSaltOffset; } ;
struct TYPE_13__ {int DefaultSaltLength; int OlderCredentialCount; int OldCredentialCount; int ServiceCredentialCount; int CredentialCount; int DefaultIterationCount; scalar_t__ DefaultSaltOffset; } ;
struct TYPE_12__ {size_t NtHash; size_t NtHistoryLength; size_t Data; size_t LmHash; size_t LmHistoryLength; int LmLength; int NtLength; } ;
struct TYPE_9__ {int LMHash; int LmPasswordPresent; int NTHash; int NtPasswordPresent; } ;
struct TYPE_11__ {int Private; int cbPrivate; TYPE_1__ Internal1; } ;
struct TYPE_10__ {size_t NumberOfHashes; int * Hash; } ;
typedef TYPE_2__* PWDIGEST_CREDENTIALS ;
typedef int PVOID ;
typedef TYPE_3__* PKIWI_SAMPR_USER_INTERNAL42_INFORMATION ;
typedef TYPE_4__* PKIWI_LSA_PRIVATE_DATA ;
typedef TYPE_5__* PKERB_STORED_CREDENTIAL_NEW ;
typedef TYPE_6__* PKERB_STORED_CREDENTIAL ;
typedef int PKERB_KEY_DATA_NEW ;
typedef int PKERB_KEY_DATA ;
typedef scalar_t__ PBYTE ;
typedef int KERB_STORED_CREDENTIAL_NEW ;
typedef int KERB_STORED_CREDENTIAL ;
typedef size_t DWORD ;


 size_t ARRAYSIZE (char**) ;
 int FALSE ;
 char** KUHL_M_LSADUMP_SAMRPC_SUPPCRED_TYPE ;
 size_t LM_NTLM_HASH_LENGTH ;
 size_t MD5_DIGEST_LENGTH ;
 int TRUE ;
 int kprintf (char*,...) ;
 int kuhl_m_lsadump_dcsync_decrypt (size_t,size_t,size_t,char*,int ) ;
 int kuhl_m_lsadump_lsa_keyDataInfo (TYPE_6__*,int ,int ,char*) ;
 int kuhl_m_lsadump_lsa_keyDataNewInfo (TYPE_5__*,int ,int ,char*) ;
 int kull_m_string_wprintf_hex (int ,size_t,int) ;

void kuhl_m_lsadump_lsa_DescrBuffer(DWORD type, DWORD rid, PVOID Buffer, DWORD BufferSize)
{
 DWORD i;
 PWDIGEST_CREDENTIALS pWDigest;
 PKERB_STORED_CREDENTIAL pKerb;
 PKERB_KEY_DATA pKeyData;
 PKERB_STORED_CREDENTIAL_NEW pKerbNew;
 PKERB_KEY_DATA_NEW pKeyDataNew;
 PKIWI_SAMPR_USER_INTERNAL42_INFORMATION pUserInfos;
 PKIWI_LSA_PRIVATE_DATA pData;

 kprintf(L"\n * %s\n", (type < ARRAYSIZE(KUHL_M_LSADUMP_SAMRPC_SUPPCRED_TYPE)) ? KUHL_M_LSADUMP_SAMRPC_SUPPCRED_TYPE[type] : L"unknown");
 switch(type)
 {
 case 0:
  pUserInfos = (PKIWI_SAMPR_USER_INTERNAL42_INFORMATION) Buffer;
  kprintf(L"    NTLM : ");
  if(pUserInfos->Internal1.NtPasswordPresent)
   kull_m_string_wprintf_hex(pUserInfos->Internal1.NTHash, LM_NTLM_HASH_LENGTH, 0);
  kprintf(L"\n    LM   : ");
  if(pUserInfos->Internal1.LmPasswordPresent)
   kull_m_string_wprintf_hex(pUserInfos->Internal1.LMHash, LM_NTLM_HASH_LENGTH, 0);
  kprintf(L"\n");
  if(pUserInfos->cbPrivate)
  {
   pData = (PKIWI_LSA_PRIVATE_DATA) pUserInfos->Private;
   if(pData->NtLength)
    kuhl_m_lsadump_dcsync_decrypt(pData->NtHash, LM_NTLM_HASH_LENGTH, rid, L"NTLM", FALSE);
   if(pData->NtHistoryLength)
    kuhl_m_lsadump_dcsync_decrypt(pData->Data, pData->NtHistoryLength, rid, L"ntlm", TRUE);
   if(pData->LmLength)
    kuhl_m_lsadump_dcsync_decrypt(pData->LmHash, LM_NTLM_HASH_LENGTH, rid, L"LM  ", FALSE);
   if(pData->LmHistoryLength)
    kuhl_m_lsadump_dcsync_decrypt(pData->Data + pData->NtHistoryLength, pData->LmHistoryLength, rid, L"lm  ", TRUE);
  }
  break;
 case 1:
  kprintf(L"    %.*s\n", BufferSize / sizeof(wchar_t), Buffer);
  break;
 case 2:
  pWDigest = (PWDIGEST_CREDENTIALS) Buffer;
  for(i = 0; i < pWDigest->NumberOfHashes; i++)
  {
   kprintf(L"    %02u  ", i + 1);
   kull_m_string_wprintf_hex(pWDigest->Hash[i], MD5_DIGEST_LENGTH, 0);
   kprintf(L"\n");
  }
  break;
 case 3:
  pKerb = (PKERB_STORED_CREDENTIAL) Buffer;
  kprintf(L"    Default Salt : %.*s\n", pKerb->DefaultSaltLength / sizeof(wchar_t), (PBYTE) pKerb + pKerb->DefaultSaltOffset);
  pKeyData = (PKERB_KEY_DATA) ((PBYTE) pKerb + sizeof(KERB_STORED_CREDENTIAL));
  pKeyData = kuhl_m_lsadump_lsa_keyDataInfo(pKerb, pKeyData, pKerb->CredentialCount, L"Credentials");
  kuhl_m_lsadump_lsa_keyDataInfo(pKerb, pKeyData, pKerb->OldCredentialCount, L"OldCredentials");
  break;
 case 4:
  pKerbNew = (PKERB_STORED_CREDENTIAL_NEW) Buffer;
  kprintf(L"    Default Salt : %.*s\n    Default Iterations : %u\n", pKerbNew->DefaultSaltLength / sizeof(wchar_t), (PBYTE) pKerbNew + pKerbNew->DefaultSaltOffset, pKerbNew->DefaultIterationCount);
  pKeyDataNew = (PKERB_KEY_DATA_NEW) ((PBYTE) pKerbNew + sizeof(KERB_STORED_CREDENTIAL_NEW));
  pKeyDataNew = kuhl_m_lsadump_lsa_keyDataNewInfo(pKerbNew, pKeyDataNew, pKerbNew->CredentialCount, L"Credentials");
  pKeyDataNew = kuhl_m_lsadump_lsa_keyDataNewInfo(pKerbNew, pKeyDataNew, pKerbNew->ServiceCredentialCount, L"ServiceCredentials");
  pKeyDataNew = kuhl_m_lsadump_lsa_keyDataNewInfo(pKerbNew, pKeyDataNew, pKerbNew->OldCredentialCount, L"OldCredentials");
  kuhl_m_lsadump_lsa_keyDataNewInfo(pKerbNew, pKeyDataNew, pKerbNew->OlderCredentialCount, L"OlderCredentials");
  break;
 case 5:
  kprintf(L"    Random Value : ");
  kull_m_string_wprintf_hex(Buffer, BufferSize, 0);
  kprintf(L"\n");
  break;
 default:
  kull_m_string_wprintf_hex(Buffer, BufferSize, 1);
  kprintf(L"\n");
 }
}
