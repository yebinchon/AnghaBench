
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCTSTR ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 int KEY_QUERY_VALUE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyEx (int ,int ,int ,int ,int *) ;
 scalar_t__ RegQueryValueEx (int ,int ,int *,int *,int ,int*) ;

__attribute__((used)) static int LoadRegInt(LPCTSTR lpszApp, LPCTSTR lpszKey, int iDefault)
{
    HKEY hKey;
    int iValue;
    DWORD tmp;

    if (RegOpenKeyEx(HKEY_CURRENT_USER, lpszApp, 0, KEY_QUERY_VALUE, &hKey) == ERROR_SUCCESS)
    {

        tmp = sizeof(int);

        if (RegQueryValueEx(hKey, lpszKey, ((void*)0), ((void*)0), (LPBYTE)&iValue, &tmp) == ERROR_SUCCESS)
            iDefault = iValue;


        RegCloseKey(hKey);
    }

    return iDefault;
}
