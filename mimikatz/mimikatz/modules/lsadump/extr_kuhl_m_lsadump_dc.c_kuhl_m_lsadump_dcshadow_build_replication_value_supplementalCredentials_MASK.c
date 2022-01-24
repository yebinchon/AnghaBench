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
struct TYPE_3__ {int /*<<< orphan*/  valLen; scalar_t__ pVal; } ;
typedef  scalar_t__ PWSTR ;
typedef  scalar_t__ PUSER_PROPERTIES ;
typedef  scalar_t__ PKERB_STORED_CREDENTIAL_NEW ;
typedef  scalar_t__ PBYTE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  TYPE_1__ ATTRVAL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__,scalar_t__,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__*,int /*<<< orphan*/ *,int,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

BOOL FUNC8(ATTRVAL* pVal, PWSTR szValue)
{
	BOOL status = FALSE;
	PWSTR salt;
	PBYTE aes256, aes128;
	PKERB_STORED_CREDENTIAL_NEW kerbCredentials;
	DWORD dwKerbCredentials;
	PUSER_PROPERTIES properties;
	DWORD dwProperties;

	FUNC3(L"\n== Encoder helper for supplementalCredentials ==\n\n");
	if(FUNC6(szValue, 4096, &salt, &aes256, &aes128))
	{
		if(FUNC4(salt, aes256, aes128, 4096, &kerbCredentials, &dwKerbCredentials))
		{
			if(FUNC5(&properties, &dwProperties, 1, L"Primary:Kerberos-Newer-Keys", kerbCredentials, dwKerbCredentials))
			{
				FUNC7(properties);
				if((pVal->pVal = (PBYTE) FUNC1(dwProperties)))
				{
					pVal->valLen = dwProperties;
					FUNC2(pVal->pVal, properties, pVal->valLen);
					status = TRUE;
				}
				FUNC0(properties);
			}
			FUNC0(kerbCredentials);
		}
		if(salt)
			FUNC0(salt);
		if(aes256)
			FUNC0(aes256);
		if(aes128)
			FUNC0(aes128);
	}
	return status;
}