
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int * HKEY ;
typedef char* DWORD ;


 int DELETE ;
 int DPRINT (char*,char*) ;
 char* ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_ENUMERATE_SUB_KEYS ;
 int KEY_QUERY_VALUE ;
 int KEY_SET_VALUE ;
 int RegCloseKey (int *) ;
 char* RegDeleteTreeW (int *,int *) ;
 char* RegOpenKeyExW (int ,char*,int ,int,int **) ;
 char* ScmDeleteTree (int *,int *) ;
 int swprintf (char*,char*,char*) ;

__attribute__((used)) static
DWORD
ScmDeleteControlSet(
    DWORD dwControlSet)
{
    WCHAR szControlSetName[32];
    HKEY hControlSetKey = ((void*)0);
    DWORD dwError;

    DPRINT("ScmDeleteControSet(%lu)\n", dwControlSet);


    swprintf(szControlSetName, L"SYSTEM\\ControlSet%03lu", dwControlSet);
    DPRINT("Control set: %S\n", szControlSetName);


    dwError = RegOpenKeyExW(HKEY_LOCAL_MACHINE,
                            szControlSetName,
                            0,
                            DELETE | KEY_ENUMERATE_SUB_KEYS | KEY_QUERY_VALUE | KEY_SET_VALUE,
                            &hControlSetKey);
    if (dwError != ERROR_SUCCESS)
        return dwError;






    dwError = ScmDeleteTree(hControlSetKey,
                            ((void*)0));



    RegCloseKey(hControlSetKey);

    return dwError;
}
