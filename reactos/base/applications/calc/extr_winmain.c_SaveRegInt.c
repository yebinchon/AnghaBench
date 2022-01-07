
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCTSTR ;
typedef int HKEY ;
typedef int BYTE ;


 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 int KEY_SET_VALUE ;
 int REG_DWORD ;
 int REG_OPTION_NON_VOLATILE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyEx (int ,int ,int ,int *,int ,int ,int *,int *,int *) ;
 int RegSetValueEx (int ,int ,int ,int ,int const*,int) ;

__attribute__((used)) static void SaveRegInt(LPCTSTR lpszApp, LPCTSTR lpszKey, int iValue)
{
    HKEY hKey;

    if (RegCreateKeyEx(HKEY_CURRENT_USER, lpszApp, 0, ((void*)0), REG_OPTION_NON_VOLATILE, KEY_SET_VALUE, ((void*)0), &hKey, ((void*)0)) == ERROR_SUCCESS)
    {
        RegSetValueEx(hKey, lpszKey, 0, REG_DWORD, (const BYTE*)&iValue, sizeof(int));


        RegCloseKey(hKey);
    }
}
