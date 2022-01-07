
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINECRYPT_CERTSTORE ;
typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int HCRYPTPROV ;
typedef int DWORD ;


 int CP_ACP ;
 int * CRYPT_SysRegOpenStoreW (int ,int ,int *) ;
 int * CryptMemAlloc (int) ;
 int CryptMemFree (int *) ;
 int ERROR_FILE_NOT_FOUND ;
 int MultiByteToWideChar (int ,int ,void const*,int,int *,int) ;
 int SetLastError (int ) ;
 int TRACE (char*,int ,int ,int ) ;
 int debugstr_a (void const*) ;

__attribute__((used)) static WINECRYPT_CERTSTORE *CRYPT_SysRegOpenStoreA(HCRYPTPROV hCryptProv,
 DWORD dwFlags, const void *pvPara)
{
    int len;
    WINECRYPT_CERTSTORE *ret = ((void*)0);

    TRACE("(%ld, %08x, %s)\n", hCryptProv, dwFlags,
     debugstr_a(pvPara));

    if (!pvPara)
    {
        SetLastError(ERROR_FILE_NOT_FOUND);
        return ((void*)0);
    }
    len = MultiByteToWideChar(CP_ACP, 0, pvPara, -1, ((void*)0), 0);
    if (len)
    {
        LPWSTR storeName = CryptMemAlloc(len * sizeof(WCHAR));

        if (storeName)
        {
            MultiByteToWideChar(CP_ACP, 0, pvPara, -1, storeName, len);
            ret = CRYPT_SysRegOpenStoreW(hCryptProv, dwFlags, storeName);
            CryptMemFree(storeName);
        }
    }
    return ret;
}
