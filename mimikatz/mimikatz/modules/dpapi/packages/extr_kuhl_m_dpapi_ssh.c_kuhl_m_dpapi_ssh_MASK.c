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
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/ * HKEY_USERS ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  KEY_ENUMERATE_SUB_KEYS ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  KULL_M_REGISTRY_TYPE_HIVE ; 
 int /*<<< orphan*/  KULL_M_REGISTRY_TYPE_OWN ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 

NTSTATUS FUNC15(int argc, wchar_t * argv[])
{
	PKULL_M_REGISTRY_HANDLE hRegistry;
	LPCWSTR szHive;
	HANDLE hHive;
	HKEY hBase, hUser;
	DWORD i, nbSubKeys, szMaxSubKeyLen, szKey;
	wchar_t * keyName;

	if(FUNC13(argc, argv, L"hive", &szHive, NULL))
	{
		hHive = FUNC1(szHive, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
		if(hHive != INVALID_HANDLE_VALUE)
		{
			if(FUNC12(KULL_M_REGISTRY_TYPE_HIVE, hHive, FALSE, &hRegistry))
			{
				FUNC6(hRegistry, NULL, NULL, argc, argv);
				FUNC11(hRegistry);
			}
			FUNC0(hHive);
		}
		else FUNC4(L"CreateFile");
	}
	else
	{
		if(FUNC12(KULL_M_REGISTRY_TYPE_OWN, NULL, FALSE, &hRegistry))
		{
			if(FUNC9(hRegistry, HKEY_USERS, NULL, 0, KEY_ENUMERATE_SUB_KEYS, &hBase))
			{
				if(FUNC10(hRegistry, hBase, NULL, NULL, NULL, &nbSubKeys, &szMaxSubKeyLen, NULL, NULL, NULL, NULL, NULL, NULL))
				{
					szMaxSubKeyLen++;
					if((keyName = (wchar_t *) FUNC2(LPTR, (szMaxSubKeyLen + 1) * sizeof(wchar_t))))
					{
						for(i = 0; i < nbSubKeys; i++)
						{
							szKey = szMaxSubKeyLen;
							if(FUNC8(hRegistry, hBase, i, keyName, &szKey, NULL, NULL, NULL, NULL))
							{
								if(!FUNC14(keyName, L"_Classes"))
								{
									FUNC5(L"%s ", keyName);
									if(FUNC9(hRegistry, hBase, keyName, 0, KEY_READ, &hUser))
									{
										FUNC5(L"\n");
										FUNC6(hRegistry, hUser, keyName, argc, argv);
										FUNC7(hRegistry, hUser);
									}
									else FUNC4(L"kull_m_registry_RegOpenKeyEx");
								}
							}
						}
						FUNC3(keyName);
					}
				}
				FUNC7(hRegistry, hBase);
			}
			else FUNC4(L"kull_m_registry_RegOpenKeyEx");
			FUNC11(hRegistry);
		}
	}
	return STATUS_SUCCESS;
}