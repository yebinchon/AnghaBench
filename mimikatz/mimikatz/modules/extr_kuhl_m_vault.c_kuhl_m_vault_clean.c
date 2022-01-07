
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NTSTATUS ;


 int FreeLibrary (scalar_t__) ;
 int STATUS_SUCCESS ;
 scalar_t__ hVaultCli ;

NTSTATUS kuhl_m_vault_clean()
{
 if(hVaultCli)
  FreeLibrary(hVaultCli);
 return STATUS_SUCCESS;
}
