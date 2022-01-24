#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG_PTR ;
struct TYPE_13__ {int cbCred; TYPE_1__* credentials; } ;
struct TYPE_12__ {int /*<<< orphan*/  size; scalar_t__ key; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__* PVOID ;
typedef  TYPE_2__* PKIWI_KRBTGT_CREDENTIALS_64 ;
typedef  TYPE_2__* PKIWI_KRBTGT_CREDENTIALS_6 ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  KIWI_KRBTGT_CREDENTIAL_64 ;
typedef  int /*<<< orphan*/  KIWI_KRBTGT_CREDENTIAL_6 ;
typedef  TYPE_2__ KIWI_KRBTGT_CREDENTIALS_64 ;
typedef  TYPE_2__ KIWI_KRBTGT_CREDENTIALS_6 ;
typedef  size_t DWORD ;

/* Variables and functions */
 scalar_t__ KULL_M_WIN_BUILD_10_1607 ; 
 int /*<<< orphan*/  LPTR ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ NtBuildNumber ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,size_t,int /*<<< orphan*/ ) ; 

void FUNC8(PVOID addr, LPCSTR prefix)
{
	DWORD sizeForCreds, i;
	KIWI_KRBTGT_CREDENTIALS_64 tmpCred64, *creds64;
	KIWI_KRBTGT_CREDENTIALS_6 tmpCred6, *creds6;
	PVOID buffer;

	if(addr)
	{
		FUNC5("\n%s krbtgt: ", prefix);
		if(NtBuildNumber < KULL_M_WIN_BUILD_10_1607)
		{
			if(FUNC4((ULONG_PTR) addr, &tmpCred6, sizeof(KIWI_KRBTGT_CREDENTIALS_6) - sizeof(KIWI_KRBTGT_CREDENTIAL_6), NULL))
			{
				sizeForCreds = sizeof(KIWI_KRBTGT_CREDENTIALS_6) + (tmpCred6.cbCred - 1) * sizeof(KIWI_KRBTGT_CREDENTIAL_6);
				if((creds6 = (PKIWI_KRBTGT_CREDENTIALS_6) FUNC0(LPTR, sizeForCreds)))
				{
					if(FUNC4((ULONG_PTR) addr, creds6, sizeForCreds, NULL))
					{
						FUNC5("%u credentials\n", creds6->cbCred);
						for(i = 0; i < creds6->cbCred; i++)
						{
							FUNC5("\t * %s : ", FUNC6(FUNC2(creds6->credentials[i].type)));
							if((buffer = FUNC0(LPTR, FUNC3(creds6->credentials[i].size))))
							{
								if(FUNC4((ULONG_PTR) creds6->credentials[i].key, buffer, FUNC3(creds6->credentials[i].size), NULL))
									FUNC7(buffer, FUNC3(creds6->credentials[i].size), 0);
								FUNC1(buffer);
							}
							FUNC5("\n");
						}
					}
					FUNC1(creds6);
				}
			}
		}
		else
		{
			if(FUNC4((ULONG_PTR) addr, &tmpCred64, sizeof(KIWI_KRBTGT_CREDENTIALS_64) - sizeof(KIWI_KRBTGT_CREDENTIAL_64), NULL))
			{
				sizeForCreds = sizeof(KIWI_KRBTGT_CREDENTIALS_64) + (tmpCred64.cbCred - 1) * sizeof(KIWI_KRBTGT_CREDENTIAL_64);
				if((creds64 = (PKIWI_KRBTGT_CREDENTIALS_64) FUNC0(LPTR, sizeForCreds)))
				{
					if(FUNC4((ULONG_PTR) addr, creds64, sizeForCreds, NULL))
					{
						FUNC5("%u credentials\n", creds64->cbCred);
						for(i = 0; i < creds64->cbCred; i++)
						{
							FUNC5("\t * %s : ", FUNC6(FUNC2(creds64->credentials[i].type)));
							if((buffer = FUNC0(LPTR, FUNC3(creds64->credentials[i].size))))
							{
								if(FUNC4((ULONG_PTR) creds64->credentials[i].key, buffer, FUNC3(creds64->credentials[i].size), NULL))
									FUNC7(buffer, FUNC3(creds64->credentials[i].size), 0);
								FUNC1(buffer);
							}
							FUNC5("\n");
						}
					}
					FUNC1(creds64);
				}
			}
		}
	}
}