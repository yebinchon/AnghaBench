
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REGSAM ;
typedef int ** PHKEY ;
typedef int LPCWSTR ;
typedef int * HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SERVICE_EXISTS ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_CREATE_SUB_KEY ;
 int KEY_READ ;
 scalar_t__ REG_OPENED_EXISTING_KEY ;
 int REG_OPTION_NON_VOLATILE ;
 int RegCloseKey (int *) ;
 scalar_t__ RegCreateKeyExW (int *,int ,int ,int *,int ,int ,int *,int **,scalar_t__*) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int,int **) ;

DWORD
ScmCreateServiceKey(LPCWSTR lpServiceName,
                    REGSAM samDesired,
                    PHKEY phKey)
{
    HKEY hServicesKey = ((void*)0);
    DWORD dwDisposition;
    DWORD dwError;

    *phKey = ((void*)0);

    dwError = RegOpenKeyExW(HKEY_LOCAL_MACHINE,
                            L"System\\CurrentControlSet\\Services",
                            0,
                            KEY_READ | KEY_CREATE_SUB_KEY,
                            &hServicesKey);
    if (dwError != ERROR_SUCCESS)
        return dwError;

    dwError = RegCreateKeyExW(hServicesKey,
                              lpServiceName,
                              0,
                              ((void*)0),
                              REG_OPTION_NON_VOLATILE,
                              samDesired,
                              ((void*)0),
                              phKey,
                              &dwDisposition);
    RegCloseKey(hServicesKey);

    return dwError;
}
