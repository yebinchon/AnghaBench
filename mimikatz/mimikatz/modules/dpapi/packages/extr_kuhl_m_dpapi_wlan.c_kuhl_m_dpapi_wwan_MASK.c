#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  scalar_t__ PBYTE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ LPWSTR ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (scalar_t__,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__*,int*) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (scalar_t__,char*,scalar_t__*) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC12(int argc, wchar_t * argv[])
{
	PBYTE pFile, hex, dataOut;
	DWORD dwData, lenHex, lenDataOut;
	LPWSTR dataU, dataF;
	LPCWSTR infile;

	if(FUNC7(argc, argv, L"in", &infile, NULL))
	{
		if(FUNC6(infile, &pFile, &dwData))
		{
			if((dataU = FUNC8((const char *) pFile)))
			{
				if(FUNC9(dataU, L"Name", &dataF))
				{
					FUNC3(L"Profile \'%s\'\n\n", dataF);
					FUNC0(dataF);
				}
				if(FUNC9(dataU, L"AccessString", &dataF))
				{
					FUNC3(L" * AccessString    : %s\n", dataF);
					FUNC0(dataF);
				}
				if(FUNC9(dataU, L"SubscriberID", &dataF))
				{
					if(FUNC10(dataF, &hex, &lenHex))
					{
						FUNC3(L"\n");
						FUNC5(0, hex);
						if(FUNC4(hex, lenHex, NULL, argc, argv, NULL, 0, (LPVOID *) &dataOut, &lenDataOut, NULL))
						{
							FUNC3(L" * SubscriberID  : ");
							FUNC11(dataOut, lenDataOut, 0);
							FUNC3(L"\n");
							FUNC3(L"%.*s", lenDataOut / sizeof(wchar_t), dataOut);
							FUNC0(dataOut);
						}
						FUNC0(hex);
					}
					FUNC0(dataF);
				}
				FUNC0(dataU);
			}
			FUNC0(pFile);
		}
		else FUNC2(L"kull_m_file_readData");
	}
	else FUNC1(L"Input Wwan XML profile needed (/in:file)\n");
	return STATUS_SUCCESS;
}