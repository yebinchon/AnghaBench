#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_2__ {int /*<<< orphan*/  blobSize; scalar_t__ blob; } ;
typedef  scalar_t__ PVOID ;
typedef  int /*<<< orphan*/  PKULL_M_CRED_LEGACY_CREDS_BLOB ;
typedef  int /*<<< orphan*/  PKULL_M_CRED_BLOB ;
typedef  TYPE_1__* PKUHL_M_DPAPI_ENCRYPTED_CRED ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  scalar_t__ PBYTE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  KULL_M_DPAPI_GUID_PROVIDER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

NTSTATUS FUNC14(int argc, wchar_t * argv[])
{
	PCWSTR infile;
	PVOID file, out;
	DWORD szFile, szOut;
	BOOL isNT5Cred;
	PKULL_M_CRED_BLOB cred;
	PKULL_M_CRED_LEGACY_CREDS_BLOB legacyCreds;

	if(FUNC13(argc, argv, L"in", &infile, NULL))
	{
		if(FUNC12(infile, (PBYTE *) &file, &szFile))
		{
			isNT5Cred = FUNC3((PBYTE) file + sizeof(DWORD), &KULL_M_DPAPI_GUID_PROVIDER);
			FUNC11(0, isNT5Cred ? file : ((PKUHL_M_DPAPI_ENCRYPTED_CRED) file)->blob);
			if(FUNC4(isNT5Cred ? file : ((PKUHL_M_DPAPI_ENCRYPTED_CRED) file)->blob, isNT5Cred ? szFile : ((PKUHL_M_DPAPI_ENCRYPTED_CRED) file)->blobSize, NULL, argc, argv, NULL, 0, &out, &szOut, isNT5Cred ? L"Decrypting Legacy Credential(s):\n" : L"Decrypting Credential:\n"))
			{
				if(isNT5Cred)
				{
					if((legacyCreds = FUNC8(out)))
					{
						FUNC10(0, legacyCreds);
						FUNC9(legacyCreds);
					}
				}
				else 
				{
					if((cred = FUNC5(out)))
					{
						FUNC7(0, cred);
						FUNC6(cred);
					}
				}
				FUNC0(out);
			}
			FUNC0(file);
		}
		else FUNC2(L"kull_m_file_readData");
	}
	else FUNC1(L"Input CRED file needed (/in:file)\n");
	return STATUS_SUCCESS;
}