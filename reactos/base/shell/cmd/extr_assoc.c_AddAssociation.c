
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef scalar_t__ LPTSTR ;
typedef int LPBYTE ;
typedef int INT ;
typedef int * HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_ALL_ACCESS ;
 int REG_OPTION_NON_VOLATILE ;
 int REG_SZ ;
 int RegCloseKey (int *) ;
 scalar_t__ RegCreateKeyEx (int *,scalar_t__,int ,int *,int ,int ,int *,int **,int *) ;
 scalar_t__ RegOpenKeyEx (int ,int ,int ,int ,int **) ;
 scalar_t__ RegSetValueEx (int *,int *,int ,int ,int ,int) ;
 int _T (char*) ;
 int _tcslen (scalar_t__) ;

__attribute__((used)) static INT
AddAssociation(LPTSTR extension, LPTSTR type)
{
    DWORD return_val;
    HKEY hKey = ((void*)0), insideKey = ((void*)0);

    return_val = RegOpenKeyEx(HKEY_LOCAL_MACHINE, _T("SOFTWARE\\Classes"), 0, KEY_ALL_ACCESS, &hKey);

    if (return_val != ERROR_SUCCESS)
        return -1;

    return_val = RegCreateKeyEx(hKey, extension, 0, ((void*)0), REG_OPTION_NON_VOLATILE, KEY_ALL_ACCESS, ((void*)0), &insideKey, ((void*)0));
    RegCloseKey(hKey);

    if (return_val != ERROR_SUCCESS)
        return -1;

    return_val = RegSetValueEx(insideKey, ((void*)0), 0, REG_SZ, (LPBYTE)type, (_tcslen(type) + 1) * sizeof(TCHAR));
    RegCloseKey(insideKey);

    if (return_val != ERROR_SUCCESS)
        return -2;

    return 0;
}
