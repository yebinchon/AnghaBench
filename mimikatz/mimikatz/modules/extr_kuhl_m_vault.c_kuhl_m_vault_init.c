
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PVAULTOPENVAULT ;
typedef scalar_t__ PVAULTGETITEM8 ;
typedef scalar_t__ PVAULTGETITEM7 ;
typedef scalar_t__ PVAULTGETINFORMATION ;
typedef scalar_t__ PVAULTFREE ;
typedef scalar_t__ PVAULTENUMERATEVAULTS ;
typedef scalar_t__ PVAULTENUMERATEITEMTYPES ;
typedef scalar_t__ PVAULTENUMERATEITEMS ;
typedef scalar_t__ PVAULTCLOSEVAULT ;
typedef int NTSTATUS ;


 scalar_t__ GetProcAddress (int ,char*) ;
 int LoadLibrary (char*) ;
 int STATUS_SUCCESS ;
 scalar_t__ VaultCloseVault ;
 scalar_t__ VaultEnumerateItemTypes ;
 scalar_t__ VaultEnumerateItems ;
 scalar_t__ VaultEnumerateVaults ;
 scalar_t__ VaultFree ;
 scalar_t__ VaultGetInformation ;
 scalar_t__ VaultGetItem7 ;
 scalar_t__ VaultGetItem8 ;
 scalar_t__ VaultOpenVault ;
 int hVaultCli ;
 int isVaultInit ;

NTSTATUS kuhl_m_vault_init()
{
 if(hVaultCli = LoadLibrary(L"vaultcli"))
 {
  VaultEnumerateItemTypes = (PVAULTENUMERATEITEMTYPES) GetProcAddress(hVaultCli, "VaultEnumerateItemTypes");
  VaultEnumerateVaults = (PVAULTENUMERATEVAULTS) GetProcAddress(hVaultCli, "VaultEnumerateVaults");
  VaultOpenVault = (PVAULTOPENVAULT) GetProcAddress(hVaultCli, "VaultOpenVault");
  VaultGetInformation = (PVAULTGETINFORMATION) GetProcAddress(hVaultCli, "VaultGetInformation");
  VaultEnumerateItems = (PVAULTENUMERATEITEMS) GetProcAddress(hVaultCli, "VaultEnumerateItems");
  VaultCloseVault = (PVAULTCLOSEVAULT) GetProcAddress(hVaultCli, "VaultCloseVault");
  VaultFree = (PVAULTFREE) GetProcAddress(hVaultCli, "VaultFree");
  VaultGetItem7 = (PVAULTGETITEM7) GetProcAddress(hVaultCli, "VaultGetItem");
  VaultGetItem8 = (PVAULTGETITEM8) VaultGetItem7;

  isVaultInit = VaultEnumerateItemTypes && VaultEnumerateVaults && VaultOpenVault && VaultGetInformation && VaultEnumerateItems && VaultCloseVault && VaultFree && VaultGetItem7;
 }
 return STATUS_SUCCESS;
}
