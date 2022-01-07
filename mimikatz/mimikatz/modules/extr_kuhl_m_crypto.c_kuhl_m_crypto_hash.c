
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_9__ {int Length; int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
struct TYPE_10__ {int Buffer; } ;
typedef int * PCWCHAR ;
typedef TYPE_2__ OEM_STRING ;
typedef int NTSTATUS ;
typedef int DWORD ;
typedef int BYTE ;


 int CALG_MD5 ;
 int CALG_SHA1 ;
 int CALG_SHA_256 ;
 int LM_NTLM_HASH_LENGTH ;
 int MD5_DIGEST_LENGTH ;
 scalar_t__ NT_SUCCESS (int ) ;
 int RtlDigestLM (int ,int *) ;
 int RtlDigestNTLM (TYPE_1__*,int *) ;
 int RtlFreeOemString (TYPE_2__*) ;
 int RtlInitUnicodeString (TYPE_1__*,int *) ;
 int RtlUpcaseUnicodeStringToOemString (TYPE_2__*,TYPE_1__*,int ) ;
 int SHA_DIGEST_LENGTH ;
 int STATUS_SUCCESS ;
 int TRUE ;
 int kprintf (char*) ;
 int kull_m_crypto_get_dcc (int *,int *,TYPE_1__*,int) ;
 scalar_t__ kull_m_crypto_hash (int ,int ,int ,int *,int) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,int **,int *) ;
 int kull_m_string_wprintf_hex (int *,int,int ) ;
 int wcstoul (int *,int *,int ) ;

NTSTATUS kuhl_m_crypto_hash(int argc, wchar_t * argv[])
{
 PCWCHAR szCount, szPassword = ((void*)0), szUsername = ((void*)0);
 UNICODE_STRING uPassword, uUsername;

 OEM_STRING oTmp;
 DWORD count = 10240;
 BYTE hash[LM_NTLM_HASH_LENGTH], dcc[LM_NTLM_HASH_LENGTH], md5[MD5_DIGEST_LENGTH], sha1[SHA_DIGEST_LENGTH], sha2[32];

 kull_m_string_args_byName(argc, argv, L"password", &szPassword, ((void*)0));
 kull_m_string_args_byName(argc, argv, L"user", &szUsername, ((void*)0));
 if(kull_m_string_args_byName(argc, argv, L"count", &szCount, ((void*)0)))
  count = wcstoul(szCount, ((void*)0), 0);

 RtlInitUnicodeString(&uPassword, szPassword);
 RtlInitUnicodeString(&uUsername, szUsername);
 if(NT_SUCCESS(RtlDigestNTLM(&uPassword, hash)))
 {
  kprintf(L"NTLM: "); kull_m_string_wprintf_hex(hash, LM_NTLM_HASH_LENGTH, 0); kprintf(L"\n");
  if(szUsername)
  {
   if(NT_SUCCESS(kull_m_crypto_get_dcc(dcc, hash, &uUsername, 0)))
   {
    kprintf(L"DCC1: "); kull_m_string_wprintf_hex(dcc, LM_NTLM_HASH_LENGTH, 0); kprintf(L"\n");
    if(NT_SUCCESS(kull_m_crypto_get_dcc(dcc, hash, &uUsername, count)))
    {
     kprintf(L"DCC2: "); kull_m_string_wprintf_hex(dcc, LM_NTLM_HASH_LENGTH, 0); kprintf(L"\n");
    }
   }
  }
 }
 if(NT_SUCCESS(RtlUpcaseUnicodeStringToOemString(&oTmp, &uPassword, TRUE)))
 {
  if(NT_SUCCESS(RtlDigestLM(oTmp.Buffer, hash)))
  {
   kprintf(L"LM  : "); kull_m_string_wprintf_hex(hash, LM_NTLM_HASH_LENGTH, 0); kprintf(L"\n");
  }
  RtlFreeOemString(&oTmp);
 }

 if(kull_m_crypto_hash(CALG_MD5, uPassword.Buffer, uPassword.Length, md5, MD5_DIGEST_LENGTH))
  kprintf(L"MD5 : "); kull_m_string_wprintf_hex(md5, MD5_DIGEST_LENGTH, 0); kprintf(L"\n");
 if(kull_m_crypto_hash(CALG_SHA1, uPassword.Buffer, uPassword.Length, sha1, SHA_DIGEST_LENGTH))
  kprintf(L"SHA1: "); kull_m_string_wprintf_hex(sha1, SHA_DIGEST_LENGTH, 0); kprintf(L"\n");
 if(kull_m_crypto_hash(CALG_SHA_256, uPassword.Buffer, uPassword.Length, sha2, 32))
  kprintf(L"SHA2: "); kull_m_string_wprintf_hex(sha2, 32, 0); kprintf(L"\n");

 return STATUS_SUCCESS;
}
