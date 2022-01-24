#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  char* PWSTR ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  int /*<<< orphan*/  HINF ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/ * HKEY_CURRENT_USER ; 
 int /*<<< orphan*/ * HKEY_LOCAL_MACHINE ; 
 int MAX_PATH ; 
 int PREFIX_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int*) ; 

__attribute__((used)) static void FUNC7(HINF hInf, PCWSTR pszSection, PWSTR pszBuffer, DWORD dwSize)
{
    INFCONTEXT context;
    WCHAR key[MAX_PATH + 2], value[MAX_PATH + 2];
    WCHAR prefix[PREFIX_LEN + 2];
    HKEY root, subkey = 0;
    DWORD size;

    static const WCHAR hklm[] = {'H','K','L','M',0};
    static const WCHAR hkcu[] = {'H','K','C','U',0};

    /* load the destination parameters */
    FUNC3(hInf, pszSection, NULL, &context);
    FUNC4(&context, 1, prefix, PREFIX_LEN + 2, &size);
    FUNC6(prefix, &size);
    FUNC4(&context, 2, key, MAX_PATH + 2, &size);
    FUNC6(key, &size);
    FUNC4(&context, 3, value, MAX_PATH + 2, &size);
    FUNC6(value, &size);

    if (!FUNC5(prefix, hklm))
        root = HKEY_LOCAL_MACHINE;
    else if (!FUNC5(prefix, hkcu))
        root = HKEY_CURRENT_USER;
    else
        root = NULL;

    size = dwSize * sizeof(WCHAR);

    /* fallback to the default destination dir if reg fails */
    if (FUNC1(root, key, &subkey) ||
        FUNC2(subkey, value, NULL, NULL, (LPBYTE)pszBuffer, &size))
    {
        FUNC4(&context, 5, pszBuffer, dwSize, &size);
        FUNC6(pszBuffer, &size);
    }

    if (subkey) FUNC0(subkey);
}