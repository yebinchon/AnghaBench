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
typedef  char* PCWCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int CRYPT_MACHINE_KEYSET ; 
 int CRYPT_SILENT ; 
 char* MS_KEY_STORAGE_PROVIDER ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ **,char*,char**,char*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC7(int argc, wchar_t * argv[])
{
	PCWCHAR szProvider, pProvider, szProviderType, szStore, szCngProvider;
	DWORD dwProviderType, dwFlags = 0;
	
	BOOL export = FUNC5(argc, argv, L"export", NULL, NULL);
	
	FUNC5(argc, argv, L"provider", &szProvider, L"MS_ENHANCED_PROV");
	if(!(pProvider = FUNC3(szProvider)))
		pProvider = szProvider;
	
	FUNC5(argc, argv, L"providertype", &szProviderType, L"PROV_RSA_FULL");
	if(!(dwProviderType = FUNC4(szProviderType)))
		dwProviderType = FUNC6(szProviderType, NULL, 0);

	if(FUNC5(argc, argv, L"machine", NULL, NULL))
		dwFlags = CRYPT_MACHINE_KEYSET; // same as NCRYPT_MACHINE_KEY_FLAG :)
	szStore = dwFlags ? L"machine" : L"user";
	
	if(FUNC5(argc, argv, L"silent", NULL, NULL))
		dwFlags |= CRYPT_SILENT;

	FUNC5(argc, argv, L"cngprovider", &szCngProvider, MS_KEY_STORAGE_PROVIDER);

	FUNC0(L" * Store         : \'%s\'\n"	
			L" * Provider      : \'%s\' (\'%s\')\n"
			L" * Provider type : \'%s\' (%u)\n"
			L" * CNG Provider  : \'%s\'\n",
			szStore,
			szProvider, pProvider,
			szProviderType, dwProviderType,
			szCngProvider);

	FUNC0(L"\nCryptoAPI keys :\n");
	FUNC1(NULL, pProvider, dwProviderType, dwFlags, export, szStore);
	FUNC0(L"\nCNG keys :\n");
	FUNC2(NULL, szCngProvider, dwFlags, export, szStore);
	return STATUS_SUCCESS;
}