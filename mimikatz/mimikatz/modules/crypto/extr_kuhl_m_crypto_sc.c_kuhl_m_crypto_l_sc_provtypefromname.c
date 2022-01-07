
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int LPCWSTR ;
typedef scalar_t__ DWORD ;


 scalar_t__ CryptEnumProviders (scalar_t__,int *,int ,scalar_t__*,int *,scalar_t__*) ;
 scalar_t__ ERROR_NO_MORE_ITEMS ;
 scalar_t__ GetLastError () ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,scalar_t__) ;
 int LocalFree (int *) ;
 int PRINT_ERROR_AUTO (char*) ;
 scalar_t__ _wcsicmp (int ,int *) ;

DWORD kuhl_m_crypto_l_sc_provtypefromname(LPCWSTR szProvider)
{
 DWORD result = 0, provType, tailleRequise, index = 0;
 wchar_t * monProvider;
 for(index = 0, result = 0; !result && CryptEnumProviders(index, ((void*)0), 0, &provType, ((void*)0), &tailleRequise); index++)
 {
  if(monProvider = (wchar_t *) LocalAlloc(LPTR, tailleRequise))
  {
   if(CryptEnumProviders(index, ((void*)0), 0, &provType, monProvider, &tailleRequise))
    if(_wcsicmp(szProvider, monProvider) == 0)
     result = provType;
   LocalFree(monProvider);
  }
 }
 if(!result && GetLastError() != ERROR_NO_MORE_ITEMS)
  PRINT_ERROR_AUTO(L"CryptEnumProviders");
 return provType;
}
