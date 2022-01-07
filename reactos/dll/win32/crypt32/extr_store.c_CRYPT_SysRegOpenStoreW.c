
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINECRYPT_CERTSTORE ;
typedef char WCHAR ;
typedef int REGSAM ;
typedef scalar_t__ LPWSTR ;
typedef void const* LPCWSTR ;
typedef int LONG ;
typedef int HKEY ;
typedef int HCRYPTPROV ;
typedef int DWORD ;


 void* CERT_GROUP_POLICY_SYSTEM_STORE_REGPATH ;
 void* CERT_LOCAL_MACHINE_SYSTEM_STORE_REGPATH ;
 int CERT_STORE_CREATE_NEW_FLAG ;
 int CERT_STORE_OPEN_EXISTING_FLAG ;
 int CERT_STORE_READONLY_FLAG ;






 int CERT_SYSTEM_STORE_LOCATION_MASK ;


 int CRYPT_ImportSystemRootCertsToReg () ;
 int * CRYPT_RegOpenStore (int ,int,int ) ;
 scalar_t__ CryptMemAlloc (int) ;
 int CryptMemFree (scalar_t__) ;
 int ERROR_FILE_EXISTS ;
 int E_INVALIDARG ;
 int FIXME (char*,int ) ;
 int HKEY_CURRENT_USER ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_ALL_ACCESS ;
 int KEY_READ ;
 int REG_OPENED_EXISTING_KEY ;
 int RegCloseKey (int ) ;
 int RegCreateKeyExW (int ,scalar_t__,int ,int *,int ,int ,int *,int *,int*) ;
 int RegOpenKeyExW (int ,scalar_t__,int ,int ,int *) ;
 int SetLastError (int ) ;
 int TRACE (char*,int ,int,int ) ;
 int debugstr_w (void const*) ;
 int lstrcmpiW (void const*,int ) ;
 int lstrlenW (void const*) ;
 int rootW ;
 int wsprintfW (scalar_t__,char const*,void const*,void const*) ;

__attribute__((used)) static WINECRYPT_CERTSTORE *CRYPT_SysRegOpenStoreW(HCRYPTPROV hCryptProv,
 DWORD dwFlags, const void *pvPara)
{
    static const WCHAR fmt[] = { '%','s','\\','%','s',0 };
    LPCWSTR storeName = pvPara;
    LPWSTR storePath;
    WINECRYPT_CERTSTORE *store = ((void*)0);
    HKEY root;
    LPCWSTR base;

    TRACE("(%ld, %08x, %s)\n", hCryptProv, dwFlags,
     debugstr_w(pvPara));

    if (!pvPara)
    {
        SetLastError(E_INVALIDARG);
        return ((void*)0);
    }

    switch (dwFlags & CERT_SYSTEM_STORE_LOCATION_MASK)
    {
    case 132:
        root = HKEY_LOCAL_MACHINE;
        base = CERT_LOCAL_MACHINE_SYSTEM_STORE_REGPATH;

        if (!lstrcmpiW(storeName, rootW))
            CRYPT_ImportSystemRootCertsToReg();
        break;
    case 134:
        root = HKEY_CURRENT_USER;
        base = CERT_LOCAL_MACHINE_SYSTEM_STORE_REGPATH;
        break;
    case 135:



        FIXME("CERT_SYSTEM_STORE_CURRENT_SERVICE, %s: stub\n",
         debugstr_w(storeName));
        return ((void*)0);
    case 129:



        FIXME("CERT_SYSTEM_STORE_SERVICES, %s: stub\n",
         debugstr_w(storeName));
        return ((void*)0);
    case 128:

        FIXME("CERT_SYSTEM_STORE_USERS, %s: stub\n",
         debugstr_w(storeName));
        return ((void*)0);
    case 133:
        root = HKEY_CURRENT_USER;
        base = CERT_GROUP_POLICY_SYSTEM_STORE_REGPATH;
        break;
    case 130:
        root = HKEY_LOCAL_MACHINE;
        base = CERT_GROUP_POLICY_SYSTEM_STORE_REGPATH;
        break;
    case 131:

        FIXME("CERT_SYSTEM_STORE_LOCAL_MACHINE_ENTERPRISE, %s: stub\n",
         debugstr_w(storeName));
        return ((void*)0);
    default:
        SetLastError(E_INVALIDARG);
        return ((void*)0);
    }

    storePath = CryptMemAlloc((lstrlenW(base) + lstrlenW(storeName) + 2) *
     sizeof(WCHAR));
    if (storePath)
    {
        LONG rc;
        HKEY key;
        REGSAM sam = dwFlags & CERT_STORE_READONLY_FLAG ? KEY_READ :
            KEY_ALL_ACCESS;

        wsprintfW(storePath, fmt, base, storeName);
        if (dwFlags & CERT_STORE_OPEN_EXISTING_FLAG)
            rc = RegOpenKeyExW(root, storePath, 0, sam, &key);
        else
        {
            DWORD disp;

            rc = RegCreateKeyExW(root, storePath, 0, ((void*)0), 0, sam, ((void*)0),
                                 &key, &disp);
            if (!rc && dwFlags & CERT_STORE_CREATE_NEW_FLAG &&
                disp == REG_OPENED_EXISTING_KEY)
            {
                RegCloseKey(key);
                rc = ERROR_FILE_EXISTS;
            }
        }
        if (!rc)
        {
            store = CRYPT_RegOpenStore(hCryptProv, dwFlags, key);
            RegCloseKey(key);
        }
        else
            SetLastError(rc);
        CryptMemFree(storePath);
    }
    return store;
}
