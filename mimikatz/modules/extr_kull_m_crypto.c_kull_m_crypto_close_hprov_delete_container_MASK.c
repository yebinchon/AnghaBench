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
typedef  scalar_t__ PSTR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPT_DELETEKEYSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  PP_CONTAINER ; 
 int /*<<< orphan*/  PP_NAME ; 
 int /*<<< orphan*/  PP_PROVTYPE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

BOOL FUNC6(HCRYPTPROV hProv)
{
	BOOL status = FALSE;
	DWORD provtype, szLen = 0;
	PSTR container, provider;
	if(FUNC1(hProv, PP_CONTAINER, NULL, &szLen, 0))
	{
		if((container = (PSTR) FUNC3(LPTR, szLen)))
		{
			if(FUNC1(hProv, PP_CONTAINER, (LPBYTE) container, &szLen, 0))
			{
				if(FUNC1(hProv, PP_NAME, NULL, &szLen, 0))
				{
					if((provider = (PSTR) FUNC3(LPTR, szLen)))
					{
						if(FUNC1(hProv, PP_NAME, (LPBYTE) provider, &szLen, 0))
						{
							szLen = sizeof(DWORD);
							if(FUNC1(hProv, PP_PROVTYPE, (LPBYTE) &provtype, &szLen, 0))
							{
								FUNC2(hProv, 0);
								status = FUNC0(&hProv, container, provider, provtype, CRYPT_DELETEKEYSET);
							}
						}
						FUNC4(provider);
					}
				}
				FUNC4(container);
			}
		}
	}
	if(!status)
		FUNC5(L"CryptGetProvParam/CryptAcquireContextA");
	return status;
}