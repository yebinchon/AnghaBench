#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_9__ {int /*<<< orphan*/  Length; int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
struct TYPE_10__ {int /*<<< orphan*/  Buffer; } ;
typedef  int /*<<< orphan*/ * PCWCHAR ;
typedef  TYPE_2__ OEM_STRING ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  CALG_MD5 ; 
 int /*<<< orphan*/  CALG_SHA1 ; 
 int /*<<< orphan*/  CALG_SHA_256 ; 
 int LM_NTLM_HASH_LENGTH ; 
 int MD5_DIGEST_LENGTH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC12(int argc, wchar_t * argv[])
{
	PCWCHAR szCount, szPassword = NULL, szUsername = NULL;
	UNICODE_STRING uPassword, uUsername;/*, uTmp;
	ANSI_STRING aTmp;*/
	OEM_STRING oTmp;
	DWORD count = 10240;
	BYTE hash[LM_NTLM_HASH_LENGTH], dcc[LM_NTLM_HASH_LENGTH], md5[MD5_DIGEST_LENGTH], sha1[SHA_DIGEST_LENGTH], sha2[32];
	
	FUNC9(argc, argv, L"password", &szPassword, NULL);
	FUNC9(argc, argv, L"user", &szUsername, NULL);
	if(FUNC9(argc, argv, L"count", &szCount, NULL))
		count = FUNC11(szCount, NULL, 0);

	FUNC4(&uPassword, szPassword);
	FUNC4(&uUsername, szUsername);
	if(FUNC0(FUNC2(&uPassword, hash)))
	{
		FUNC6(L"NTLM: "); FUNC10(hash, LM_NTLM_HASH_LENGTH, 0); FUNC6(L"\n");
		if(szUsername)
		{
			if(FUNC0(FUNC7(dcc, hash, &uUsername, 0)))
			{
				FUNC6(L"DCC1: "); FUNC10(dcc, LM_NTLM_HASH_LENGTH, 0); FUNC6(L"\n");
				if(FUNC0(FUNC7(dcc, hash, &uUsername, count)))
				{
					FUNC6(L"DCC2: "); FUNC10(dcc, LM_NTLM_HASH_LENGTH, 0); FUNC6(L"\n");
				}
			}
		}
	}

	//if(NT_SUCCESS(RtlUpcaseUnicodeString(&uTmp, &uPassword, TRUE)))
	//{
	//	if(NT_SUCCESS(RtlUnicodeStringToAnsiString(&aTmp, &uTmp, TRUE)))
	//	{
	//		if(NT_SUCCESS(RtlDigestLM(aTmp.Buffer, hash)))
	//		{
	//			kprintf(L"LM  : "); kull_m_string_wprintf_hex(hash, LM_NTLM_HASH_LENGTH, 0); kprintf(L"\n");
	//		}
	//		RtlFreeAnsiString(&aTmp);
	//	}
	//	RtlFreeUnicodeString(&uTmp);
	//}

	if(FUNC0(FUNC5(&oTmp, &uPassword, TRUE)))
	{
		if(FUNC0(FUNC1(oTmp.Buffer, hash)))
		{
			FUNC6(L"LM  : "); FUNC10(hash, LM_NTLM_HASH_LENGTH, 0); FUNC6(L"\n");
		}
		FUNC3(&oTmp);
	}

	if(FUNC8(CALG_MD5, uPassword.Buffer, uPassword.Length, md5, MD5_DIGEST_LENGTH))
		FUNC6(L"MD5 : "); FUNC10(md5, MD5_DIGEST_LENGTH, 0); FUNC6(L"\n");
	if(FUNC8(CALG_SHA1, uPassword.Buffer, uPassword.Length, sha1, SHA_DIGEST_LENGTH))
		FUNC6(L"SHA1: "); FUNC10(sha1, SHA_DIGEST_LENGTH, 0); FUNC6(L"\n");
	if(FUNC8(CALG_SHA_256, uPassword.Buffer, uPassword.Length, sha2, 32))
		FUNC6(L"SHA2: "); FUNC10(sha2, 32, 0); FUNC6(L"\n");

	return STATUS_SUCCESS;
}