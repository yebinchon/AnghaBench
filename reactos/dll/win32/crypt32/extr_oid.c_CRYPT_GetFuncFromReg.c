
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FuncAddr {int * currentDll; int dllList; scalar_t__ lib; } ;
typedef scalar_t__ LSTATUS ;
typedef char* LPWSTR ;
typedef int LPVOID ;
typedef char const* LPCSTR ;
typedef int * LPBYTE ;
typedef scalar_t__ HMODULE ;
typedef int HKEY ;
typedef struct FuncAddr* HCRYPTOIDFUNCADDR ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 char* CRYPT_GetKeyName (scalar_t__,char const*,char const*) ;
 void* CryptMemAlloc (int) ;
 int CryptMemFree (char*) ;
 int DllW ;
 scalar_t__ ERROR_MORE_DATA ;
 int FALSE ;
 int FreeLibrary (scalar_t__) ;
 int GetProcAddress (scalar_t__,char const*) ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_READ ;
 scalar_t__ LoadLibraryW (char*) ;
 scalar_t__ REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExA (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExA (int ,char*,int *,scalar_t__*,int *,scalar_t__*) ;
 scalar_t__ RegQueryValueExW (int ,int ,int *,scalar_t__*,int *,scalar_t__*) ;
 int SetLastError (scalar_t__) ;
 int TRUE ;

__attribute__((used)) static BOOL CRYPT_GetFuncFromReg(DWORD dwEncodingType, LPCSTR pszOID,
 LPCSTR szFuncName, LPVOID *ppvFuncAddr, HCRYPTOIDFUNCADDR *phFuncAddr)
{
    BOOL ret = FALSE;
    char *keyName;
    const char *funcName;
    HKEY key;
    LSTATUS rc;

    keyName = CRYPT_GetKeyName(dwEncodingType, szFuncName, pszOID);
    rc = RegOpenKeyExA(HKEY_LOCAL_MACHINE, keyName, 0, KEY_READ, &key);
    if (!rc)
    {
        DWORD type, size = 0;

        rc = RegQueryValueExA(key, "FuncName", ((void*)0), &type, ((void*)0), &size);
        if ((!rc || rc == ERROR_MORE_DATA) && type == REG_SZ)
        {
            funcName = CryptMemAlloc(size);
            rc = RegQueryValueExA(key, "FuncName", ((void*)0), &type,
             (LPBYTE)funcName, &size);
        }
        else
            funcName = szFuncName;
        rc = RegQueryValueExW(key, DllW, ((void*)0), &type, ((void*)0), &size);
        if ((!rc || rc == ERROR_MORE_DATA) && type == REG_SZ)
        {
            LPWSTR dllName = CryptMemAlloc(size);

            if (dllName)
            {
                rc = RegQueryValueExW(key, DllW, ((void*)0), ((void*)0),
                 (LPBYTE)dllName, &size);
                if (!rc)
                {
                    HMODULE lib;





                    lib = LoadLibraryW(dllName);
                    if (lib)
                    {
                        *ppvFuncAddr = GetProcAddress(lib, funcName);
                        if (*ppvFuncAddr)
                        {
                            struct FuncAddr *addr =
                             CryptMemAlloc(sizeof(struct FuncAddr));

                            if (addr)
                            {
                                addr->lib = lib;
                                addr->dllList = addr->currentDll = ((void*)0);
                                *phFuncAddr = addr;
                                ret = TRUE;
                            }
                            else
                            {
                                *phFuncAddr = ((void*)0);
                                FreeLibrary(lib);
                            }
                        }
                        else
                        {



                            FreeLibrary(lib);
                        }
                    }
                }
                else
                    SetLastError(rc);
                CryptMemFree(dllName);
            }
        }
        else
            SetLastError(rc);
        if (funcName != szFuncName)
            CryptMemFree((char *)funcName);
        RegCloseKey(key);
    }
    else
        SetLastError(rc);
    CryptMemFree(keyName);
    return ret;
}
