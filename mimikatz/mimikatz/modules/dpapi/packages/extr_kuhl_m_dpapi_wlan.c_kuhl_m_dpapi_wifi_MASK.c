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
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ FUNC3 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (scalar_t__,char*,scalar_t__*) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC13(int argc, wchar_t * argv[])
{
	PBYTE pFile, hex, dataOut;
	DWORD dwData, lenHex, lenDataOut;
	LPWSTR dataU, dataSSID, dataF, dataAuth;
	LPCWSTR infile;

	if(FUNC8(argc, argv, L"in", &infile, NULL))
	{
		if(FUNC7(infile, &pFile, &dwData))
		{
			if((dataU = FUNC9((const char *) pFile)))
			{
				if(FUNC10(dataU, L"name", &dataF))
				{
					FUNC4(L"Profile \'%s\'\n\n", dataF);
					FUNC0(dataF);
				}
				if(FUNC10(dataU, L"SSID", &dataSSID))
				{
					FUNC4(L" * SSID ");
					if(FUNC10(dataSSID, L"name", &dataF))
					{
						FUNC4(L"name     : %s\n", dataF);
						FUNC0(dataF);
					}
					else if(FUNC10(dataSSID, L"hex", &dataF))
					{
						FUNC4(L"hex      : %s\n", dataF);
						FUNC0(dataF);
					}
					else FUNC4(L"?\n");
					FUNC0(dataSSID);
				}
				if(FUNC10(dataU, L"authentication", &dataAuth))
				{
					FUNC4(L" * Authentication: %s\n", dataAuth);
					if(FUNC10(dataU, L"encryption", &dataF))
					{
						FUNC4(L" * Encryption    : %s\n", dataF);
						FUNC0(dataF);
					}
					if(FUNC10(dataU, L"keyMaterial", &dataF))
					{
						if(FUNC11(dataF, &hex, &lenHex))
						{
							FUNC4(L"\n");
							FUNC6(0, hex);
							if(FUNC5(hex, lenHex, NULL, argc, argv, NULL, 0, (LPVOID *) &dataOut, &lenDataOut, NULL))
							{
								FUNC4(L" * Key Material  : ");
								if(FUNC3(dataAuth, L"WEP") == 0)
								{
									FUNC4(L"(hex) ");
									FUNC12(dataOut, lenDataOut, 0);
								}
								else
									FUNC4(L"%.*S", lenDataOut, dataOut);
								FUNC4(L"\n");
								FUNC0(dataOut);
							}
							FUNC0(hex);
						}
						FUNC0(dataF);
					}
					FUNC0(dataAuth);
				}
				FUNC0(dataU);
			}
			FUNC0(pFile);
		}
		else FUNC2(L"kull_m_file_readData");
	}
	else FUNC1(L"Input Wlan XML profile needed (/in:file)\n");
	return STATUS_SUCCESS;
}