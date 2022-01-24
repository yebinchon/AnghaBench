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
struct FuncAddr {int /*<<< orphan*/ * currentDll; int /*<<< orphan*/  dllList; scalar_t__ lib; } ;
typedef  scalar_t__ LSTATUS ;
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  char const* LPCSTR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  scalar_t__ HMODULE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  struct FuncAddr* HCRYPTOIDFUNCADDR ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 char* FUNC0 (scalar_t__,char const*,char const*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  DllW ; 
 scalar_t__ ERROR_MORE_DATA ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_READ ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ REG_SZ ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC11(DWORD dwEncodingType, LPCSTR pszOID,
 LPCSTR szFuncName, LPVOID *ppvFuncAddr, HCRYPTOIDFUNCADDR *phFuncAddr)
{
    BOOL ret = FALSE;
    char *keyName;
    const char *funcName;
    HKEY key;
    LSTATUS rc;

    keyName = FUNC0(dwEncodingType, szFuncName, pszOID);
    rc = FUNC7(HKEY_LOCAL_MACHINE, keyName, 0, KEY_READ, &key);
    if (!rc)
    {
        DWORD type, size = 0;

        rc = FUNC8(key, "FuncName", NULL, &type, NULL, &size);
        if ((!rc || rc == ERROR_MORE_DATA) && type == REG_SZ)
        {
            funcName = FUNC1(size);
            rc = FUNC8(key, "FuncName", NULL, &type,
             (LPBYTE)funcName, &size);
        }
        else
            funcName = szFuncName;
        rc = FUNC9(key, DllW, NULL, &type, NULL, &size);
        if ((!rc || rc == ERROR_MORE_DATA) && type == REG_SZ)
        {
            LPWSTR dllName = FUNC1(size);

            if (dllName)
            {
                rc = FUNC9(key, DllW, NULL, NULL,
                 (LPBYTE)dllName, &size);
                if (!rc)
                {
                    HMODULE lib;

                    /* This is a bit of a hack; MSDN describes a more
                     * complicated unload routine than this will allow.
                     * Still, this seems to suffice for now.
                     */
                    lib = FUNC5(dllName);
                    if (lib)
                    {
                        *ppvFuncAddr = FUNC4(lib, funcName);
                        if (*ppvFuncAddr)
                        {
                            struct FuncAddr *addr =
                             FUNC1(sizeof(struct FuncAddr));

                            if (addr)
                            {
                                addr->lib = lib;
                                addr->dllList = *(addr->currentDll = NULL);
                                *phFuncAddr = addr;
                                ret = TRUE;
                            }
                            else
                            {
                                *phFuncAddr = NULL;
                                FUNC3(lib);
                            }
                        }
                        else
                        {
                            /* Unload the library, the caller doesn't want
                             * to unload it when the return value is NULL.
                             */
                            FUNC3(lib);
                        }
                    }
                }
                else
                    FUNC10(rc);
                FUNC2(dllName);
            }
        }
        else
            FUNC10(rc);
        if (funcName != szFuncName)
            FUNC2((char *)funcName);
        FUNC6(key);
    }
    else
        FUNC10(rc);
    FUNC2(keyName);
    return ret;
}