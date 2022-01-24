#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_8__ {int member_0; int /*<<< orphan*/  dwPromptFlags; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_7__ {int cbData; scalar_t__ pbData; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  PKULL_M_DPAPI_BLOB ;
typedef  char* PCWSTR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int DWORD ;
typedef  TYPE_1__ DATA_BLOB ;
typedef  TYPE_2__ CRYPTPROTECT_PROMPTSTRUCT ;

/* Variables and functions */
 int CRYPTPROTECT_LOCAL_MACHINE ; 
 int /*<<< orphan*/  CRYPTPROTECT_PROMPT_ON_PROTECT ; 
 int CRYPTPROTECT_SYSTEM ; 
 scalar_t__ FUNC0 (TYPE_1__*,char*,TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * MIMIKATZ ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (char*,scalar_t__,int) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ **,char*,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int,int) ; 
 int FUNC13 (char*) ; 

NTSTATUS FUNC14(int argc, wchar_t * argv[]) // no support for protecting with RAW masterkey at this time
{
	DATA_BLOB dataIn, dataOut, dataEntropy = {0, NULL};
	PKULL_M_DPAPI_BLOB blob;
	PCWSTR description = NULL, szEntropy, outfile;
	CRYPTPROTECT_PROMPTSTRUCT promptStructure = {sizeof(CRYPTPROTECT_PROMPTSTRUCT), CRYPTPROTECT_PROMPT_ON_PROTECT, NULL, MIMIKATZ}, *pPrompt;
	DWORD flags = 0, outputMode = 1;

	FUNC10(argc, argv, L"data", (PCWSTR *) &dataIn.pbData, MIMIKATZ);
	FUNC10(argc, argv, L"description", &description, NULL);
	if(FUNC10(argc, argv, L"entropy", &szEntropy, NULL))
		FUNC11(szEntropy, &dataEntropy.pbData, &dataEntropy.cbData);
	if(FUNC10(argc, argv, L"machine", NULL, NULL))
		flags |= CRYPTPROTECT_LOCAL_MACHINE;
	if(FUNC10(argc, argv, L"system", NULL, NULL))
		flags |= CRYPTPROTECT_SYSTEM;
	pPrompt = FUNC10(argc, argv, L"prompt", NULL, NULL) ? &promptStructure : NULL;
	
	if(FUNC10(argc, argv, L"c", NULL, NULL))
		outputMode = 2;

	FUNC3(L"\ndata        : %s\n", dataIn.pbData);
	FUNC3(L"description : %s\n", description ? description : L"");
	FUNC3(L"flags       : "); FUNC8(flags); FUNC3(L"\n");
	FUNC3(L"prompt flags: "); if(pPrompt) FUNC7(pPrompt->dwPromptFlags); FUNC3(L"\n");
	FUNC3(L"entropy     : "); FUNC12(dataEntropy.pbData, dataEntropy.cbData, 0); FUNC3(L"\n\n");

	dataIn.cbData = (DWORD) ((FUNC13((PCWSTR) dataIn.pbData) + 1) * sizeof(wchar_t));
	if(FUNC0(&dataIn, description, &dataEntropy, NULL, pPrompt, flags, &dataOut))
	{
		if((blob = FUNC4(dataOut.pbData)))
		{
			FUNC6(0, blob);
			FUNC5(blob);
		}
		FUNC3(L"\n");
		if(FUNC10(argc, argv, L"out", &outfile, NULL))
		{
			if(FUNC9(outfile, dataOut.pbData, dataOut.cbData))
				FUNC3(L"Write to file \'%s\' is OK\n", outfile);
		}
		else
		{
			FUNC3(L"Blob:\n");
			FUNC12(dataOut.pbData, dataOut.cbData, outputMode | (16 << 16));
			FUNC3(L"\n");
		}
		FUNC1(dataOut.pbData);
	}
	else FUNC2(L"CryptProtectData");

	if(dataEntropy.pbData)
		FUNC1(dataEntropy.pbData);

	return STATUS_SUCCESS;
}