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
typedef  int /*<<< orphan*/  rgbSystemCredUser ;
typedef  int /*<<< orphan*/  rgbSystemCredMachine ;
typedef  scalar_t__ ULONG_PTR ;
typedef  scalar_t__ BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ KULL_M_WIN_MIN_BUILD_8 ; 
 scalar_t__ NtBuildNumber ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__*,int,int /*<<< orphan*/ *) ; 
 int SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int,int /*<<< orphan*/ ) ; 

void FUNC5()
{
	ULONG_PTR g_fSystemCredsInitialized, g_rgbSystemCredMachine, g_rgbSystemCredUser;
	ULONG_PTR g_guidPreferredKey, g_pbPreferredKey, g_cbPreferredKey, g_guidW2KPreferredKey, g_pbW2KPreferredKey, g_cbW2KPreferredKey;
	BOOL isSystemCredsInitialized;
	BYTE rgbSystemCredMachine[SHA_DIGEST_LENGTH], rgbSystemCredUser[SHA_DIGEST_LENGTH];

	if(NtBuildNumber < KULL_M_WIN_MIN_BUILD_8)
	{
		g_guidPreferredKey = FUNC0("lsasrv!g_guidPreferredKey");
		g_pbPreferredKey = FUNC0("lsasrv!g_pbPreferredKey");
		g_cbPreferredKey = FUNC0("lsasrv!g_cbPreferredKey");
		g_guidW2KPreferredKey = FUNC0("lsasrv!g_guidW2KPreferredKey");
		g_pbW2KPreferredKey = FUNC0("lsasrv!g_pbW2KPreferredKey");
		g_cbW2KPreferredKey = FUNC0("lsasrv!g_cbW2KPreferredKey");

		g_fSystemCredsInitialized = FUNC0("lsasrv!g_fSystemCredsInitialized");
		g_rgbSystemCredMachine = FUNC0("lsasrv!g_rgbSystemCredMachine");
		g_rgbSystemCredUser = FUNC0("lsasrv!g_rgbSystemCredUser");
	}
	else
	{
		g_guidPreferredKey = FUNC0("dpapisrv!g_guidPreferredKey");
		g_pbPreferredKey = FUNC0("dpapisrv!g_pbPreferredKey");
		g_cbPreferredKey = FUNC0("dpapisrv!g_cbPreferredKey");
		g_guidW2KPreferredKey = FUNC0("dpapisrv!g_guidW2KPreferredKey");
		g_pbW2KPreferredKey = FUNC0("dpapisrv!g_pbW2KPreferredKey");
		g_cbW2KPreferredKey = FUNC0("dpapisrv!g_cbW2KPreferredKey");

		g_fSystemCredsInitialized = FUNC0("dpapisrv!g_fSystemCredsInitialized");
		g_rgbSystemCredMachine = FUNC0("dpapisrv!g_rgbSystemCredMachine");
		g_rgbSystemCredUser = FUNC0("dpapisrv!g_rgbSystemCredUser");
	}
	
	if((g_guidPreferredKey && g_pbPreferredKey && g_cbPreferredKey) || (g_guidW2KPreferredKey && g_pbW2KPreferredKey && g_cbW2KPreferredKey))
	{
		FUNC2("\nDPAPI Backup keys\n=================\n");
		FUNC3(g_guidPreferredKey, g_pbPreferredKey, g_cbPreferredKey, "Current prefered key:       ");
		FUNC3(g_guidW2KPreferredKey, g_pbW2KPreferredKey, g_cbW2KPreferredKey, "Compatibility prefered key: ");
	}
	
	if(g_fSystemCredsInitialized && g_rgbSystemCredMachine && g_rgbSystemCredUser)
	{
		if(FUNC1(g_fSystemCredsInitialized, &isSystemCredsInitialized, sizeof(BOOL), NULL))
		{
			FUNC2("\nDPAPI System\n============\n");
			if(isSystemCredsInitialized)
			{
				if(
					FUNC1(g_rgbSystemCredMachine, rgbSystemCredMachine, sizeof(rgbSystemCredMachine), NULL) &&
					FUNC1(g_rgbSystemCredUser, rgbSystemCredUser, sizeof(rgbSystemCredUser), NULL)
					)
				{
					FUNC2("full: ");
					FUNC4(rgbSystemCredMachine, sizeof(rgbSystemCredMachine), 0);
					FUNC4(rgbSystemCredUser, sizeof(rgbSystemCredUser), 0);
					FUNC2("\nm/u : ");
					FUNC4(rgbSystemCredMachine, sizeof(rgbSystemCredMachine), 0);
					FUNC2(" / ");
					FUNC4(rgbSystemCredUser, sizeof(rgbSystemCredUser), 0);
					FUNC2("\n");
				}
			}
		}
	}
}