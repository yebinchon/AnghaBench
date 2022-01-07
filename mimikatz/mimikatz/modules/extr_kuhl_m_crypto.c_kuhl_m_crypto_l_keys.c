
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef char* PCWCHAR ;
typedef int NTSTATUS ;
typedef int DWORD ;
typedef int BOOL ;


 int CRYPT_MACHINE_KEYSET ;
 int CRYPT_SILENT ;
 char* MS_KEY_STORAGE_PROVIDER ;
 int STATUS_SUCCESS ;
 int kprintf (char*,...) ;
 int kuhl_m_crypto_l_keys_capi (int *,char*,int,int,int ,char*) ;
 int kuhl_m_crypto_l_keys_cng (int *,char*,int,int ,char*) ;
 char* kull_m_crypto_provider_to_realname (char*) ;
 int kull_m_crypto_provider_type_to_dword (char*) ;
 int kull_m_string_args_byName (int,int **,char*,char**,char*) ;
 int wcstoul (char*,int *,int ) ;

NTSTATUS kuhl_m_crypto_l_keys(int argc, wchar_t * argv[])
{
 PCWCHAR szProvider, pProvider, szProviderType, szStore, szCngProvider;
 DWORD dwProviderType, dwFlags = 0;

 BOOL export = kull_m_string_args_byName(argc, argv, L"export", ((void*)0), ((void*)0));

 kull_m_string_args_byName(argc, argv, L"provider", &szProvider, L"MS_ENHANCED_PROV");
 if(!(pProvider = kull_m_crypto_provider_to_realname(szProvider)))
  pProvider = szProvider;

 kull_m_string_args_byName(argc, argv, L"providertype", &szProviderType, L"PROV_RSA_FULL");
 if(!(dwProviderType = kull_m_crypto_provider_type_to_dword(szProviderType)))
  dwProviderType = wcstoul(szProviderType, ((void*)0), 0);

 if(kull_m_string_args_byName(argc, argv, L"machine", ((void*)0), ((void*)0)))
  dwFlags = CRYPT_MACHINE_KEYSET;
 szStore = dwFlags ? L"machine" : L"user";

 if(kull_m_string_args_byName(argc, argv, L"silent", ((void*)0), ((void*)0)))
  dwFlags |= CRYPT_SILENT;

 kull_m_string_args_byName(argc, argv, L"cngprovider", &szCngProvider, MS_KEY_STORAGE_PROVIDER);

 kprintf(L" * Store         : \'%s\'\n"
   L" * Provider      : \'%s\' (\'%s\')\n"
   L" * Provider type : \'%s\' (%u)\n"
   L" * CNG Provider  : \'%s\'\n",
   szStore,
   szProvider, pProvider,
   szProviderType, dwProviderType,
   szCngProvider);

 kprintf(L"\nCryptoAPI keys :\n");
 kuhl_m_crypto_l_keys_capi(((void*)0), pProvider, dwProviderType, dwFlags, export, szStore);
 kprintf(L"\nCNG keys :\n");
 kuhl_m_crypto_l_keys_cng(((void*)0), szCngProvider, dwFlags, export, szStore);
 return STATUS_SUCCESS;
}
