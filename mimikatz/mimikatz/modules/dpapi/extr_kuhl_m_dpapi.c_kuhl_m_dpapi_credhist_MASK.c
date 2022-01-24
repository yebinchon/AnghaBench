#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  passwordHash ;
typedef  int /*<<< orphan*/  derivedkey ;
struct TYPE_16__ {int /*<<< orphan*/  guid; } ;
struct TYPE_19__ {int /*<<< orphan*/ * pSid; TYPE_3__ header; } ;
struct TYPE_15__ {int flags; int /*<<< orphan*/ * sha1hashDerived; } ;
struct TYPE_18__ {TYPE_2__ data; } ;
struct TYPE_14__ {int /*<<< orphan*/  guid; } ;
struct TYPE_17__ {int __dwCount; TYPE_6__** entries; TYPE_1__ current; } ;
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  int /*<<< orphan*/ * PSID ;
typedef  TYPE_4__* PKULL_M_DPAPI_CREDHIST ;
typedef  TYPE_5__* PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/ * LPCGUID ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CALG_SHA1 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FALSE ; 
 int KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_SHA1 ; 
 int LM_NTLM_HASH_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 TYPE_5__* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 TYPE_4__* FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC16 (TYPE_6__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*) ; 
 scalar_t__ FUNC18 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *) ; 

NTSTATUS FUNC22(int argc, wchar_t * argv[])
{
	PBYTE buffer;
	DWORD szBuffer, i;
	LPCWSTR szIn = NULL, szSid = NULL, szHash = NULL, szPassword = NULL;
	PWSTR convertedSid = NULL;
	PSID pSid = NULL, prevSid = NULL;
	LPCGUID prevGuid;
	PKULL_M_DPAPI_CREDHIST credhist;
	PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY pCredentialEntry = NULL;
	BYTE passwordHash[SHA_DIGEST_LENGTH], derivedkey[SHA_DIGEST_LENGTH], sha1[SHA_DIGEST_LENGTH], ntlm[LM_NTLM_HASH_LENGTH];
	BOOL hashOk = FALSE;

	if(FUNC18(argc, argv, L"in", &szIn, NULL))
	{
		if(FUNC17(szIn, &buffer, &szBuffer))
		{
			if((credhist = FUNC13(buffer, szBuffer)))
			{
				FUNC15(0, credhist);

				if(FUNC18(argc, argv, L"sid", &szSid, NULL))
				{
					if(FUNC1(szSid, &pSid))
						prevSid = pSid;
					else FUNC4(L"ConvertStringSidToSid");
				}
				
				if(FUNC18(argc, argv, L"password", &szPassword, NULL))
					hashOk = FUNC11(CALG_SHA1, szPassword, (DWORD) FUNC21(szPassword) * sizeof(wchar_t), passwordHash, sizeof(passwordHash));
				else if(FUNC18(argc, argv, L"sha1", &szHash, NULL))
					hashOk = FUNC19(szHash, passwordHash, sizeof(passwordHash));

				prevGuid = &credhist->current.guid;
				if(!prevSid && credhist->__dwCount)
					prevSid = credhist->entries[0]->pSid;

				for(i = 0; prevSid && (i < credhist->__dwCount); i++)
				{
					if(FUNC0(prevSid, &convertedSid))
					{
						pCredentialEntry = FUNC10(NULL, prevGuid);
						if(!pCredentialEntry)
							pCredentialEntry = FUNC10(convertedSid, NULL);
						if(pCredentialEntry && (pCredentialEntry->data.flags & KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_SHA1))
						{
							FUNC5(L"\n  [entry %u] with volatile cache: ", i); FUNC9(pCredentialEntry);
							if(FUNC16(credhist->entries[i], pCredentialEntry->data.sha1hashDerived, sizeof(pCredentialEntry->data.sha1hashDerived), ntlm, sha1))
							{
								FUNC8(pCredentialEntry, prevGuid);
								FUNC6(credhist->entries[i], ntlm, sha1);
							}
						}
						else if(hashOk)
						{
							FUNC5(L"\n  [entry %u] with SHA1 and SID: ", i); FUNC20(passwordHash, sizeof(passwordHash), 0); FUNC5(L"\n");
							if(FUNC12(CALG_SHA1, passwordHash, sizeof(passwordHash), convertedSid, (DWORD) (FUNC21(convertedSid) + 1) * sizeof(wchar_t), derivedkey, sizeof(derivedkey)))
								if(FUNC16(credhist->entries[i], derivedkey, sizeof(derivedkey), ntlm, sha1))
								{
									FUNC7(convertedSid, prevGuid, NULL, passwordHash, NULL, szPassword);
									FUNC6(credhist->entries[i], ntlm, sha1);
								}
						}
						FUNC2(convertedSid);
					}
					prevGuid = &credhist->entries[i]->header.guid;
					prevSid = credhist->entries[i]->pSid;
				}

				if(pSid)
					FUNC2(pSid);
				
				FUNC14(credhist);
			}
			FUNC2(buffer);
		}
	}
	else FUNC3(L"Input credhist file needed (/in:file)\n");
	return STATUS_SUCCESS;
}