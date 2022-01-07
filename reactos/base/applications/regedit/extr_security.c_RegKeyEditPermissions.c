
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int dwFlags; int* pszServerName; int* pszObjectName; int* pszPageTitle; int hInstance; } ;
typedef TYPE_1__ SI_OBJECT_INFO ;
typedef int PCRegKeySecurity ;
typedef int* LPWSTR ;
typedef int* LPCWSTR ;
typedef int HWND ;
typedef int HKEY ;
typedef int BOOL ;


 int CRegKeySecurity_fnConstructor (int*,int ,TYPE_1__*,int *) ;
 int CRegKeySecurity_fnRelease (int ) ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 int FALSE ;
 int GetProcessHeap () ;
 int HKEY_CLASSES_ROOT ;
 int HKEY_CURRENT_CONFIG ;
 int HKEY_CURRENT_USER ;
 int HKEY_LOCAL_MACHINE ;
 int HKEY_USERS ;
 int* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int*) ;
 int ISecurityInformation ;
 int SI_ADVANCED ;
 int SI_CONTAINER ;
 int SI_EDIT_ALL ;
 int SI_EDIT_EFFECTIVE ;
 int SI_EDIT_PERMS ;
 int SI_OWNER_RECURSE ;
 int SI_RESET_DACL_TREE ;
 int SI_RESET_SACL_TREE ;
 int SetLastError (int ) ;
 int hInst ;
 int impl_to_interface (int ,int ) ;
 int pfnEditSecurity (int ,int ) ;
 int wcscat (int*,...) ;
 int wcslen (int*) ;

BOOL
RegKeyEditPermissions(HWND hWndOwner,
                      HKEY hKey,
                      LPCWSTR lpMachine,
                      LPCWSTR lpKeyName)
{
    BOOL Result = FALSE;
    LPCWSTR lphKey = ((void*)0);
    LPWSTR lpKeyPath = ((void*)0);
    PCRegKeySecurity RegKeySecurity;
    SI_OBJECT_INFO ObjectInfo;
    size_t lnMachine = 0, lnKeyName = 0;

    if (pfnEditSecurity == ((void*)0))
    {
        return FALSE;
    }

    if (lpMachine != ((void*)0))
        lnMachine = wcslen(lpMachine);
    if (lpKeyName != ((void*)0))
        lnKeyName = wcslen(lpKeyName);


    if (lpMachine != ((void*)0) &&
        (lpMachine[0] == L'\0' ||
         (lpMachine[0] == L'.' && lpMachine[1] == L'.')))
    {
        lnMachine = 0;
    }

    if (hKey == HKEY_CLASSES_ROOT)
        lphKey = L"CLASSES_ROOT";
    else if (hKey == HKEY_CURRENT_USER)
        lphKey = L"CURRENT_USER";
    else if (hKey == HKEY_LOCAL_MACHINE)
        lphKey = L"MACHINE";
    else if (hKey == HKEY_USERS)
        lphKey = L"USERS";
    else if (hKey == HKEY_CURRENT_CONFIG)
        lphKey = L"CONFIG";
    else
    goto Cleanup;

    lpKeyPath = HeapAlloc(GetProcessHeap(),
                          0,
                          (2 + lnMachine + 1 + wcslen(lphKey) + 1 + lnKeyName) * sizeof(WCHAR));
    if (lpKeyPath == ((void*)0))
    {
        SetLastError(ERROR_NOT_ENOUGH_MEMORY);
        goto Cleanup;
    }
    lpKeyPath[0] = L'\0';

    if (lnMachine != 0)
    {
        wcscat(lpKeyPath,
               L"\\\\");
        wcscat(lpKeyPath,
               lpMachine);
        wcscat(lpKeyPath,
               L"\\");
    }

    wcscat(lpKeyPath,
           lphKey);
    if (lpKeyName != ((void*)0) && lpKeyName[0] != L'\0')
    {
        if (lpKeyName[0] != L'\\')
        {
            wcscat(lpKeyPath,
                    L"\\");
        }

        wcscat(lpKeyPath,
               lpKeyName);
    }

    ObjectInfo.dwFlags = SI_EDIT_ALL | SI_ADVANCED | SI_CONTAINER | SI_EDIT_EFFECTIVE | SI_EDIT_PERMS |
                             SI_OWNER_RECURSE | SI_RESET_DACL_TREE | SI_RESET_SACL_TREE;
    ObjectInfo.hInstance = hInst;
    ObjectInfo.pszServerName = (LPWSTR)lpMachine;
    ObjectInfo.pszObjectName = (LPWSTR)lpKeyName;
    ObjectInfo.pszPageTitle = (LPWSTR)lpKeyName;

    if (!(RegKeySecurity = CRegKeySecurity_fnConstructor(lpKeyPath,
                                                         hKey,
                                                         &ObjectInfo,
                                                         &Result)))
    {
        goto Cleanup;
    }


    pfnEditSecurity(hWndOwner,
                    impl_to_interface(RegKeySecurity,
                                      ISecurityInformation));


    CRegKeySecurity_fnRelease(RegKeySecurity);

Cleanup:
    if (lpKeyPath != ((void*)0))
    {
        HeapFree(GetProcessHeap(),
                 0,
                 lpKeyPath);
    }

    return Result;
}
