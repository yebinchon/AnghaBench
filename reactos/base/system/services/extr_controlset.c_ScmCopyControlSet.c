
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * HKEY ;
typedef char* DWORD ;


 int DPRINT (char*,int *) ;
 char* ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_READ ;
 int KEY_WRITE ;
 int REG_OPTION_NON_VOLATILE ;
 int RegCloseKey (int *) ;
 char* RegCopyTreeW (int *,int *,int *) ;
 char* RegCreateKeyExW (int ,int *,int ,int *,int ,int ,int *,int **,char**) ;
 int RegFlushKey (int *) ;
 char* RegOpenKeyExW (int ,int *,int ,int ,int **) ;
 char* ScmCopyTree (int *,int *) ;
 int swprintf (int *,char*,char*) ;

__attribute__((used)) static
DWORD
ScmCopyControlSet(
    DWORD dwSourceControlSet,
    DWORD dwDestinationControlSet)
{
    WCHAR szSourceControlSetName[32];
    WCHAR szDestinationControlSetName[32];
    HKEY hSourceControlSetKey = ((void*)0);
    HKEY hDestinationControlSetKey = ((void*)0);
    DWORD dwDisposition;
    DWORD dwError;


    swprintf(szSourceControlSetName, L"SYSTEM\\ControlSet%03lu", dwSourceControlSet);
    DPRINT("Source control set: %S\n", szSourceControlSetName);


    swprintf(szDestinationControlSetName, L"SYSTEM\\ControlSet%03lu", dwDestinationControlSet);
    DPRINT("Destination control set: %S\n", szDestinationControlSetName);


    dwError = RegOpenKeyExW(HKEY_LOCAL_MACHINE,
                            szSourceControlSetName,
                            0,
                            KEY_READ,
                            &hSourceControlSetKey);
    if (dwError != ERROR_SUCCESS)
        goto done;


    dwError = RegCreateKeyExW(HKEY_LOCAL_MACHINE,
                              szDestinationControlSetName,
                              0,
                              ((void*)0),
                              REG_OPTION_NON_VOLATILE,
                              KEY_WRITE,
                              ((void*)0),
                              &hDestinationControlSetKey,
                              &dwDisposition);
    if (dwError != ERROR_SUCCESS)
        goto done;







    dwError = ScmCopyTree(hSourceControlSetKey,
                          hDestinationControlSetKey);

    if (dwError != ERROR_SUCCESS)
        goto done;

    RegFlushKey(hDestinationControlSetKey);

done:
    if (hDestinationControlSetKey != ((void*)0))
        RegCloseKey(hDestinationControlSetKey);

    if (hSourceControlSetKey != ((void*)0))
        RegCloseKey(hSourceControlSetKey);

    return dwError;
}
