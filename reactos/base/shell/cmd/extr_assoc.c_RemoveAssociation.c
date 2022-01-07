
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPTSTR ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_ALL_ACCESS ;
 int RegCloseKey (int ) ;
 scalar_t__ RegDeleteKey (int ,int ) ;
 scalar_t__ RegOpenKeyEx (int ,int ,int ,int ,int *) ;
 int _T (char*) ;

__attribute__((used)) static int
RemoveAssociation(LPTSTR extension)
{
    DWORD return_val;
    HKEY hKey;

    return_val = RegOpenKeyEx(HKEY_LOCAL_MACHINE, _T("SOFTWARE\\Classes"), 0, KEY_ALL_ACCESS, &hKey);

    if (return_val != ERROR_SUCCESS)
        return -1;

    return_val = RegDeleteKey(hKey, extension);
    RegCloseKey(hKey);

    if (return_val != ERROR_SUCCESS)
        return -2;

    return 0;
}
