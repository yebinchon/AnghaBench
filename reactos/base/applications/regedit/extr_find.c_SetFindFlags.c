
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dwData ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BYTE ;


 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 int KEY_ALL_ACCESS ;
 int REG_DWORD ;
 int REG_OPTION_NON_VOLATILE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExW (int ,int ,int ,int *,int ,int ,int *,int *,int*) ;
 int RegSetValueExW (int ,int ,int ,int ,int const*,int) ;
 int g_szGeneralRegKey ;
 int s_szFindFlags ;
 int s_szFindFlagsR ;

__attribute__((used)) static void SetFindFlags(DWORD dwFlags)
{
    HKEY hKey;
    DWORD dwDisposition;
    DWORD dwData;

    if (RegCreateKeyExW(HKEY_CURRENT_USER, g_szGeneralRegKey, 0, ((void*)0), REG_OPTION_NON_VOLATILE, KEY_ALL_ACCESS, ((void*)0), &hKey, &dwDisposition) == ERROR_SUCCESS)
    {
        dwData = (dwFlags >> 0) & 0x0000FFFF;
        RegSetValueExW(hKey, s_szFindFlags, 0, REG_DWORD, (const BYTE *) &dwData, sizeof(dwData));

        dwData = (dwFlags >> 16) & 0x0000FFFF;
        RegSetValueExW(hKey, s_szFindFlagsR, 0, REG_DWORD, (const BYTE *) &dwData, sizeof(dwData));

        RegCloseKey(hKey);
    }
}
