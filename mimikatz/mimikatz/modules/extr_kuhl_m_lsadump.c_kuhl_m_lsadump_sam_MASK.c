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
typedef  int /*<<< orphan*/  PKULL_M_REGISTRY_HANDLE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  KULL_M_REGISTRY_TYPE_HIVE ; 
 int /*<<< orphan*/  KULL_M_REGISTRY_TYPE_OWN ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int SYSKEY_LENGTH ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

NTSTATUS FUNC10(int argc, wchar_t * argv[])
{
	HANDLE hDataSystem, hDataSam;
	PKULL_M_REGISTRY_HANDLE hRegistry, hRegistry2;
	HKEY hBase;
	BYTE sysKey[SYSKEY_LENGTH];
	LPCWSTR szSystem = NULL, szSam = NULL;

	if(FUNC9(argc, argv, L"system", &szSystem, NULL))
	{
		hDataSystem = FUNC1(szSystem, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
		if(hDataSystem != INVALID_HANDLE_VALUE)
		{
			if(FUNC8(KULL_M_REGISTRY_TYPE_HIVE, hDataSystem, FALSE, &hRegistry))
			{
				if(FUNC3(hRegistry, NULL, sysKey))
				{
					if(FUNC9(argc, argv, L"sam", &szSam, NULL))
					{
						hDataSam = FUNC1(szSam, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
						if(hDataSam != INVALID_HANDLE_VALUE)
						{
							if(FUNC8(KULL_M_REGISTRY_TYPE_HIVE, hDataSam, FALSE, &hRegistry2))
							{
								FUNC4(hRegistry2, NULL, sysKey);
								FUNC7(hRegistry2);
							}
							FUNC0(hDataSam);
						}
						else FUNC2(L"CreateFile (SAM hive)");
					}
				}
				FUNC7(hRegistry);
			}
			FUNC0(hDataSystem);
		}
		else FUNC2(L"CreateFile (SYSTEM hive)");
	}
	else
	{
		if(FUNC8(KULL_M_REGISTRY_TYPE_OWN, NULL, FALSE, &hRegistry))
		{
			if(FUNC6(hRegistry, HKEY_LOCAL_MACHINE, L"SYSTEM", 0, KEY_READ, &hBase))
			{
				if(FUNC3(hRegistry, hBase, sysKey))
				{
					if(FUNC6(hRegistry, HKEY_LOCAL_MACHINE, L"SAM", 0, KEY_READ, &hBase))
					{
						FUNC4(hRegistry, hBase, sysKey);
						FUNC5(hRegistry, hBase);
					}
					else FUNC2(L"kull_m_registry_RegOpenKeyEx (SAM)");
				}
				FUNC5(hRegistry, hBase);
			}
			FUNC7(hRegistry);
		}
	}
	return STATUS_SUCCESS;
}