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
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int AES_128_KEY_LENGTH ; 
 int AES_256_KEY_LENGTH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KERB_ETYPE_AES128_CTS_HMAC_SHA1_96 ; 
 int /*<<< orphan*/  KERB_ETYPE_AES256_CTS_HMAC_SHA1_96 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (scalar_t__,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

BOOL FUNC12(LPCWSTR theArg, DWORD count, PWSTR *salt, PBYTE *aes256, PBYTE *aes128)
{
	BOOL status = FALSE;
	int ret;
	wchar_t bSalt[64 + 1] = {0}, bAes256[64 + 1] = {0}, bAes128[64 + 1] = {0};
	UNICODE_STRING uSalt, uAes256, uAes128;
	DWORD size;

	if(theArg)
	{
		*salt = NULL;
		*aes256 = NULL;
		*aes128 = NULL;

		ret = FUNC11(theArg, L"%[^:]:%[^:]:%s", bSalt, (DWORD) FUNC0(bSalt), bAes256, (DWORD) FUNC0(bAes256), bAes128, (DWORD) FUNC0(bAes128));
		if(ret > 1)
		{
			FUNC4(&uSalt, bSalt);
			FUNC5(L"Salt  : %wZ\nAES256: ", &uSalt);
			if(FUNC10(bAes256) != (AES_256_KEY_LENGTH * 2))
			{
				FUNC4(&uAes256, bAes256);
				FUNC5(L"(password - %wZ) ", &uAes256);
				FUNC6(KERB_ETYPE_AES256_CTS_HMAC_SHA1_96, &uAes256, &uSalt, count, aes256, &size);
			}
			else
			{
				FUNC5(L"(hex) ");
				if(!FUNC8(bAes256, aes256, &size))
					FUNC2(L"kull_m_string_stringToHexBuffer(AES256)\n");
			}
			if(*aes256)
			{
				FUNC9(*aes256, size, 0);
				FUNC5(L"\n");
				if((status = FUNC7(salt, bSalt)))
				{
					if(ret > 2)
					{
						FUNC5(L"AES128: ");
						if(FUNC10(bAes128) != (AES_128_KEY_LENGTH * 2))
						{
							FUNC4(&uAes128, bAes128);
							FUNC5(L"(password - %wZ) ", &uAes128);
							FUNC6(KERB_ETYPE_AES128_CTS_HMAC_SHA1_96, &uAes128, &uSalt, count, aes128, &size);
						}
						else
						{
							FUNC5(L"(hex) ");
							if(!FUNC8(bAes128, aes128, &size))
								FUNC2(L"kull_m_string_stringToHexBuffer(AES128)\n");
						}
						if(*aes128)
						{
							FUNC9(*aes128, size, 0);
							FUNC5(L"\n");
						}
					}
				}
				else
				{
					*aes256 = (PBYTE) FUNC1(*aes256);
					FUNC3(L"kull_m_string_copy");
				}
			}
		}
		else FUNC2(L"Error when parsing argument: %s (ret: %i)\n", theArg, ret);
	}
	else FUNC2(L"NULL arg\n");
	return status;
}