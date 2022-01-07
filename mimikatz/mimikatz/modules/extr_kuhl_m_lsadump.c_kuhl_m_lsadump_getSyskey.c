
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int PKULL_M_REGISTRY_HANDLE ;
typedef scalar_t__* LPBYTE ;
typedef int HKEY ;
typedef size_t DWORD ;
typedef scalar_t__ BYTE ;
typedef int BOOL ;


 size_t ARRAYSIZE (int *) ;
 int FALSE ;
 int KEY_READ ;
 int PRINT_ERROR (char*) ;
 int SYSKEY_LENGTH ;
 int TRUE ;
 int * kuhl_m_lsadump_SYSKEY_NAMES ;
 size_t* kuhl_m_lsadump_SYSKEY_PERMUT ;
 int kull_m_registry_RegCloseKey (int ,int ) ;
 scalar_t__ kull_m_registry_RegOpenKeyEx (int ,int ,int ,int ,int ,int *) ;
 scalar_t__ kull_m_registry_RegQueryInfoKey (int ,int ,int *,size_t*,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 int swscanf_s (int *,char*,size_t*) ;

BOOL kuhl_m_lsadump_getSyskey(PKULL_M_REGISTRY_HANDLE hRegistry, HKEY hLSA, LPBYTE sysKey)
{
 BOOL status = TRUE;
 DWORD i;
 HKEY hKey;
 wchar_t buffer[8 + 1];
 DWORD szBuffer;
 BYTE buffKey[SYSKEY_LENGTH];

 for(i = 0 ; (i < ARRAYSIZE(kuhl_m_lsadump_SYSKEY_NAMES)) && status; i++)
 {
  status = FALSE;
  if(kull_m_registry_RegOpenKeyEx(hRegistry, hLSA, kuhl_m_lsadump_SYSKEY_NAMES[i], 0, KEY_READ, &hKey))
  {
   szBuffer = 8 + 1;
   if(kull_m_registry_RegQueryInfoKey(hRegistry, hKey, buffer, &szBuffer, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0)))
    status = swscanf_s(buffer, L"%x", (DWORD *) &buffKey[i*sizeof(DWORD)]) != -1;
   kull_m_registry_RegCloseKey(hRegistry, hKey);
  }
  else PRINT_ERROR(L"LSA Key Class read error\n");
 }

 if(status)
  for(i = 0; i < SYSKEY_LENGTH; i++)
   sysKey[i] = buffKey[kuhl_m_lsadump_SYSKEY_PERMUT[i]];

 return status;
}
