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
typedef  scalar_t__ PVAULTOPENVAULT ;
typedef  scalar_t__ PVAULTGETITEM8 ;
typedef  scalar_t__ PVAULTGETITEM7 ;
typedef  scalar_t__ PVAULTGETINFORMATION ;
typedef  scalar_t__ PVAULTFREE ;
typedef  scalar_t__ PVAULTENUMERATEVAULTS ;
typedef  scalar_t__ PVAULTENUMERATEITEMTYPES ;
typedef  scalar_t__ PVAULTENUMERATEITEMS ;
typedef  scalar_t__ PVAULTCLOSEVAULT ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ VaultCloseVault ; 
 scalar_t__ VaultEnumerateItemTypes ; 
 scalar_t__ VaultEnumerateItems ; 
 scalar_t__ VaultEnumerateVaults ; 
 scalar_t__ VaultFree ; 
 scalar_t__ VaultGetInformation ; 
 scalar_t__ VaultGetItem7 ; 
 scalar_t__ VaultGetItem8 ; 
 scalar_t__ VaultOpenVault ; 
 int /*<<< orphan*/  hVaultCli ; 
 int isVaultInit ; 

NTSTATUS FUNC2()
{
	if((hVaultCli = FUNC1(L"vaultcli")))
	{
		VaultEnumerateItemTypes = (PVAULTENUMERATEITEMTYPES) FUNC0(hVaultCli, "VaultEnumerateItemTypes");
		VaultEnumerateVaults = (PVAULTENUMERATEVAULTS) FUNC0(hVaultCli, "VaultEnumerateVaults");
		VaultOpenVault = (PVAULTOPENVAULT) FUNC0(hVaultCli, "VaultOpenVault");
		VaultGetInformation = (PVAULTGETINFORMATION) FUNC0(hVaultCli, "VaultGetInformation");
		VaultEnumerateItems = (PVAULTENUMERATEITEMS) FUNC0(hVaultCli, "VaultEnumerateItems");
		VaultCloseVault = (PVAULTCLOSEVAULT) FUNC0(hVaultCli, "VaultCloseVault");
		VaultFree = (PVAULTFREE) FUNC0(hVaultCli, "VaultFree");
		VaultGetItem7 = (PVAULTGETITEM7) FUNC0(hVaultCli, "VaultGetItem");
		VaultGetItem8 = (PVAULTGETITEM8) VaultGetItem7;

		isVaultInit = VaultEnumerateItemTypes && VaultEnumerateVaults && VaultOpenVault && VaultGetInformation && VaultEnumerateItems && VaultCloseVault && VaultFree && VaultGetItem7;
	}
	return STATUS_SUCCESS;
}