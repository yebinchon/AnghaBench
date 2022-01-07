
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int PCWCHAR ;
typedef int NTSTATUS ;
typedef int DWORD ;


 int CertEnumSystemStore (int ,int *,int *,int ) ;
 int PRINT_ERROR_AUTO (char*) ;
 int STATUS_SUCCESS ;
 int kprintf (char*,int ,int ) ;
 int kuhl_m_crypto_l_stores_enumCallback_print ;
 int kull_m_crypto_system_store_to_dword (int ) ;
 int kull_m_string_args_byName (int,int **,char*,int *,char*) ;

NTSTATUS kuhl_m_crypto_l_stores(int argc, wchar_t * argv[])
{
 DWORD dwSystemStore, nbStore = 0;
 PCWCHAR szSystemStore;
 kull_m_string_args_byName(argc, argv, L"systemstore", &szSystemStore, L"CURRENT_USER" );
 dwSystemStore = kull_m_crypto_system_store_to_dword(szSystemStore);
 kprintf(L"Asking for System Store \'%s\' (0x%08x)\n", szSystemStore, dwSystemStore);

 if(!CertEnumSystemStore(dwSystemStore, ((void*)0), &nbStore, kuhl_m_crypto_l_stores_enumCallback_print))
  PRINT_ERROR_AUTO(L"CertEnumSystemStore");

 return STATUS_SUCCESS;
}
