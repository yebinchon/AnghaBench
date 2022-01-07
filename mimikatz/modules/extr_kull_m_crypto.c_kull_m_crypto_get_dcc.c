
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Length; int MaximumLength; int * Buffer; } ;
typedef int * PWSTR ;
typedef int PUNICODE_STRING ;
typedef int PBYTE ;
typedef int NTSTATUS ;
typedef TYPE_1__ LSA_UNICODE_STRING ;
typedef int DWORD ;
typedef int BYTE ;


 int CALG_SHA1 ;
 int FALSE ;
 int LM_NTLM_HASH_LENGTH ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int LocalFree (int *) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int RtlCopyMemory (int,int,int) ;
 int RtlDigestNTLM (TYPE_1__*,int) ;
 int RtlDowncaseUnicodeString (TYPE_1__*,int ,int ) ;
 int RtlFreeUnicodeString (TYPE_1__*) ;
 int STATUS_SUCCESS ;
 int TRUE ;
 scalar_t__ kull_m_crypto_pkcs5_pbkdf2_hmac (int ,int,int,int *,int,int ,int *,int,int ) ;

NTSTATUS kull_m_crypto_get_dcc(PBYTE dcc, PBYTE ntlm, PUNICODE_STRING Username, DWORD realIterations)
{
 NTSTATUS status;
 LSA_UNICODE_STRING HashAndLowerUsername;
 LSA_UNICODE_STRING LowerUsername;
 BYTE buffer[LM_NTLM_HASH_LENGTH];

 status = RtlDowncaseUnicodeString(&LowerUsername, Username, TRUE);
 if(NT_SUCCESS(status))
 {
  HashAndLowerUsername.Length = HashAndLowerUsername.MaximumLength = LowerUsername.Length + LM_NTLM_HASH_LENGTH;
  if(HashAndLowerUsername.Buffer = (PWSTR) LocalAlloc(LPTR, HashAndLowerUsername.MaximumLength))
  {
   RtlCopyMemory(HashAndLowerUsername.Buffer, ntlm, LM_NTLM_HASH_LENGTH);
   RtlCopyMemory((PBYTE) HashAndLowerUsername.Buffer + LM_NTLM_HASH_LENGTH, LowerUsername.Buffer, LowerUsername.Length);
   status = RtlDigestNTLM(&HashAndLowerUsername, dcc);
   if(realIterations && NT_SUCCESS(status))
   {
    if(kull_m_crypto_pkcs5_pbkdf2_hmac(CALG_SHA1, dcc, LM_NTLM_HASH_LENGTH, LowerUsername.Buffer, LowerUsername.Length, realIterations, buffer, LM_NTLM_HASH_LENGTH, FALSE))
    {
     RtlCopyMemory(dcc, buffer, LM_NTLM_HASH_LENGTH);
     status = STATUS_SUCCESS;
    }
   }
   LocalFree(HashAndLowerUsername.Buffer);
  }
  RtlFreeUnicodeString(&LowerUsername);
 }
 return status;
}
