
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dwValue ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 scalar_t__ REG_DWORD ;
 scalar_t__ RSF_LOOKATDATA ;
 scalar_t__ RSF_LOOKATKEYS ;
 scalar_t__ RSF_LOOKATVALUES ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyW (int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,int ,int *,scalar_t__*,int ,scalar_t__*) ;
 int g_szGeneralRegKey ;
 int s_szFindFlags ;
 int s_szFindFlagsR ;

__attribute__((used)) static DWORD GetFindFlags(void)
{
    HKEY hKey;
    DWORD dwType, dwValue, cbData;
    DWORD dwFlags = RSF_LOOKATKEYS | RSF_LOOKATVALUES | RSF_LOOKATDATA;

    if (RegOpenKeyW(HKEY_CURRENT_USER, g_szGeneralRegKey, &hKey) == ERROR_SUCCESS)
    {

        cbData = sizeof(dwValue);
        if (RegQueryValueExW(hKey, s_szFindFlags, ((void*)0), &dwType, (LPBYTE) &dwValue, &cbData) == ERROR_SUCCESS)
        {
            if (dwType == REG_DWORD)
                dwFlags = (dwFlags & ~0x0000FFFF) | ((dwValue & 0x0000FFFF) << 0);
        }


        cbData = sizeof(dwValue);
        if (RegQueryValueExW(hKey, s_szFindFlagsR, ((void*)0), &dwType, (LPBYTE) &dwValue, &cbData) == ERROR_SUCCESS)
        {
            if (dwType == REG_DWORD)
                dwFlags = (dwFlags & ~0xFFFF0000) | ((dwValue & 0x0000FFFF) << 16);
        }

        RegCloseKey(hKey);
    }
    return dwFlags;
}
