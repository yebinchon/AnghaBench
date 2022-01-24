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
typedef  char wchar_t ;
typedef  char* LPCWSTR ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  scalar_t__ HCRYPTKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int AT_KEYEXCHANGE ; 
 int AT_SIGNATURE ; 
 int CRYPT_FIRST ; 
 int CRYPT_NEXT ; 
 int CRYPT_VERIFYCONTEXT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_NO_MORE_ITEMS ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  PP_ENUMCONTAINERS ; 
 int /*<<< orphan*/  PP_UNIQUE_CONTAINER ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 char* FUNC14 (char*) ; 
 scalar_t__ FUNC15 (char*) ; 

void FUNC16(LPCWSTR szContainer, LPCWSTR szProvider, DWORD dwProvType, DWORD dwFlags, BOOL export, LPCWSTR szStore)
{
	HCRYPTPROV hCryptProv, hCryptKeyProv;
	HCRYPTKEY hCapiKey;
	DWORD i, dwSizeNeeded, dwUniqueSizeNeeded, ks, CRYPT_first_next = CRYPT_FIRST, dwContainer = szContainer ? (DWORD) FUNC15(szContainer) : 0, dwSubContainer;
	BOOL success;
	char *aContainerName, *aUniqueName;
	wchar_t *containerName, *fullContainer;

	if(FUNC0(&hCryptProv, szContainer, szProvider, dwProvType, CRYPT_VERIFYCONTEXT | dwFlags))
	{
		success = FUNC2(hCryptProv, PP_ENUMCONTAINERS, NULL, &dwSizeNeeded, CRYPT_first_next);
		if((aContainerName = (char *) FUNC6(LPTR, dwSizeNeeded)))
		{
			i = 0;
			while(success)
			{
				if((success = (FUNC2(hCryptProv, PP_ENUMCONTAINERS, (BYTE *) aContainerName, &dwSizeNeeded, CRYPT_first_next))))
				{
					if((containerName = FUNC14(aContainerName)))
					{
						FUNC10(L"    %u. %s\n", i,  containerName);
						dwSubContainer = (DWORD) FUNC15(containerName);

						if((fullContainer = (wchar_t *) FUNC6(LPTR, (dwContainer + dwSubContainer + 1) * sizeof(wchar_t))))
						{
							if(dwContainer)
								FUNC9(fullContainer, szContainer, dwContainer * sizeof(wchar_t));
							FUNC9(fullContainer + dwContainer, containerName, dwSubContainer * sizeof(wchar_t));

							if(FUNC0(&hCryptKeyProv, fullContainer, szProvider, dwProvType, dwFlags))
							{
								if(FUNC2(hCryptKeyProv, PP_UNIQUE_CONTAINER, NULL, &dwUniqueSizeNeeded, 0))
								{
									if((aUniqueName = (char *) FUNC6(LPTR, dwUniqueSizeNeeded)))
									{
										if(FUNC2(hCryptKeyProv, PP_UNIQUE_CONTAINER, (BYTE *) aUniqueName, &dwUniqueSizeNeeded, 0))
											FUNC10(L"    %S\n", aUniqueName);
										FUNC7(aUniqueName);
									}
								}

								for(ks = AT_KEYEXCHANGE, hCapiKey = 0; (ks <= AT_SIGNATURE) && !FUNC3(hCryptKeyProv, ks, &hCapiKey); ks++);
								if(hCapiKey)
								{
									FUNC10(L"\tType           : %s (0x%08x)\n", FUNC13(ks), ks);
									FUNC12(0, hCapiKey);
									if(export)
										FUNC11(0, hCapiKey, ks, szStore, i, containerName);
									FUNC1(hCapiKey);
								}
								else FUNC8(L"CryptGetUserKey");
							}
							FUNC7(fullContainer);
						}
						FUNC10(L"\n");
						FUNC7(containerName);
					}
				}
				CRYPT_first_next = CRYPT_NEXT;
				i++;
			}
			if(FUNC5() != ERROR_NO_MORE_ITEMS)
				FUNC8(L"CryptGetProvParam");

			FUNC4(hCryptProv, 0);
			FUNC7(aContainerName);
		}
	}
	else FUNC8(L"CryptAcquireContext");
}