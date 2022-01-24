#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int dwFlags; int* pszServerName; int* pszObjectName; int* pszPageTitle; int /*<<< orphan*/  hInstance; } ;
typedef  TYPE_1__ SI_OBJECT_INFO ;
typedef  int /*<<< orphan*/  PCRegKeySecurity ;
typedef  int* LPWSTR ;
typedef  int* LPCWSTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  HKEY_CURRENT_CONFIG ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  HKEY_USERS ; 
 int* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  ISecurityInformation ; 
 int SI_ADVANCED ; 
 int SI_CONTAINER ; 
 int SI_EDIT_ALL ; 
 int SI_EDIT_EFFECTIVE ; 
 int SI_EDIT_PERMS ; 
 int SI_OWNER_RECURSE ; 
 int SI_RESET_DACL_TREE ; 
 int SI_RESET_SACL_TREE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hInst ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,...) ; 
 int FUNC9 (int*) ; 

BOOL
FUNC10(HWND hWndOwner,
                      HKEY hKey,
                      LPCWSTR lpMachine,
                      LPCWSTR lpKeyName)
{
    BOOL Result = FALSE;
    LPCWSTR lphKey = NULL;
    LPWSTR lpKeyPath = NULL;
    PCRegKeySecurity RegKeySecurity;
    SI_OBJECT_INFO ObjectInfo;
    size_t lnMachine = 0, lnKeyName = 0;

    if (&pfnEditSecurity == NULL)
    {
        return FALSE;
    }

    if (lpMachine != NULL)
        lnMachine = FUNC9(lpMachine);
    if (lpKeyName != NULL)
        lnKeyName = FUNC9(lpKeyName);

    /* build registry path */
    if (lpMachine != NULL &&
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

    lpKeyPath = FUNC3(FUNC2(),
                          0,
                          (2 + lnMachine + 1 + FUNC9(lphKey) + 1 + lnKeyName) * sizeof(WCHAR));
    if (lpKeyPath == NULL)
    {
        FUNC5(ERROR_NOT_ENOUGH_MEMORY);
        goto Cleanup;
    }
    lpKeyPath[0] = L'\0';

    if (lnMachine != 0)
    {
        FUNC8(lpKeyPath,
               L"\\\\");
        FUNC8(lpKeyPath,
               lpMachine);
        FUNC8(lpKeyPath,
               L"\\");
    }

    FUNC8(lpKeyPath,
           lphKey);
    if (lpKeyName != NULL && lpKeyName[0] != L'\0')
    {
        if (lpKeyName[0] != L'\\')
        {
            FUNC8(lpKeyPath,
                    L"\\");
        }

        FUNC8(lpKeyPath,
               lpKeyName);
    }

    ObjectInfo.dwFlags = SI_EDIT_ALL  | SI_ADVANCED | SI_CONTAINER | SI_EDIT_EFFECTIVE | SI_EDIT_PERMS |
                             SI_OWNER_RECURSE | SI_RESET_DACL_TREE | SI_RESET_SACL_TREE;
    ObjectInfo.hInstance = hInst;
    ObjectInfo.pszServerName = (LPWSTR)lpMachine;
    ObjectInfo.pszObjectName = (LPWSTR)lpKeyName; /* FIXME */
    ObjectInfo.pszPageTitle = (LPWSTR)lpKeyName; /* FIXME */

    if (!(RegKeySecurity = FUNC0(lpKeyPath,
                                                         hKey,
                                                         &ObjectInfo,
                                                         &Result)))
    {
        goto Cleanup;
    }

    /* display the security editor dialog */
    FUNC7(hWndOwner,
                    FUNC6(RegKeySecurity,
                                      ISecurityInformation));

    /* dereference the interface, it should be destroyed here */
    FUNC1(RegKeySecurity);

Cleanup:
    if (lpKeyPath != NULL)
    {
        FUNC4(FUNC2(),
                 0,
                 lpKeyPath);
    }

    return Result;
}