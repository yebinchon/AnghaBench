#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pwszContainerName; int /*<<< orphan*/  dwProvType; int /*<<< orphan*/  pwszProvName; int /*<<< orphan*/  member_6; int /*<<< orphan*/ * member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ LPCVOID ;
typedef  int /*<<< orphan*/  LPCBYTE ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_1__ CRYPT_KEY_PROV_INFO ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AT_KEYEXCHANGE ; 
 int /*<<< orphan*/  CRYPT_EXPORTABLE ; 
 int /*<<< orphan*/  CRYPT_NEWKEYSET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MS_ENHANCED_PROV ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  PROV_RSA_FULL ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

BOOL FUNC8(LPCVOID der, DWORD derLen, LPCVOID key, DWORD keyLen, BOOL isPvk, LPCWSTR filename) // no PVK support at this time
{
	BOOL isExported = FALSE;
	CRYPT_KEY_PROV_INFO infos = {NULL, MS_ENHANCED_PROV, PROV_RSA_FULL, 0, 0, NULL, AT_KEYEXCHANGE};
	HCRYPTPROV hCryptProv;
	HCRYPTKEY hCryptKey;
	if((infos.pwszContainerName = FUNC7()))
	{
		if(FUNC0(&hCryptProv, infos.pwszContainerName, infos.pwszProvName, infos.dwProvType, CRYPT_NEWKEYSET))
		{
			if(FUNC2(hCryptProv, (LPCBYTE) key,  keyLen, 0, CRYPT_EXPORTABLE, &hCryptKey))
			{
				isExported = FUNC5(der, derLen, &infos, filename);
				FUNC1(hCryptKey);
			}
			else FUNC4(L"CryptImportKey");
			FUNC6(hCryptProv);
			//CryptReleaseContext(hCryptProv, 0);
			//if(!CryptAcquireContext(&hCryptProv, infos.pwszContainerName, NULL, PROV_RSA_FULL, CRYPT_DELETEKEYSET))
			//	PRINT_ERROR(L"Unable to delete temp keyset %s\n", infos.pwszContainerName);
		}
		else FUNC4(L"CryptAcquireContext");
		FUNC3(infos.pwszContainerName);
	}
	return isExported;
}