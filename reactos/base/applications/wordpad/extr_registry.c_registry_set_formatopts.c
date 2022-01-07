
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int REG_DWORD ;
 int RegCloseKey (int ) ;
 int RegSetValueExW (int ,int ,int ,int ,int ,int) ;
 scalar_t__ registry_get_handle (int *,int *,int ) ;
 int var_barstate0 ;
 int var_wrap ;

__attribute__((used)) static void registry_set_formatopts(int index, LPCWSTR key, DWORD barState[], DWORD wordWrap[])
{
    HKEY hKey;
    DWORD action = 0;

    if(registry_get_handle(&hKey, &action, key) == ERROR_SUCCESS)
    {
        RegSetValueExW(hKey, var_barstate0, 0, REG_DWORD, (LPBYTE)&barState[index],
                       sizeof(DWORD));
        RegSetValueExW(hKey, var_wrap, 0, REG_DWORD, (LPBYTE)&wordWrap[index],
                       sizeof(DWORD));
        RegCloseKey(hKey);
    }
}
