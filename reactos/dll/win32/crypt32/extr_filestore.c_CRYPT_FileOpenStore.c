
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINECRYPT_CERTSTORE ;
typedef scalar_t__ HCRYPTPROV ;
typedef scalar_t__ HCERTSTORE ;
typedef int HANDLE ;
typedef int DWORD ;


 int CERT_FILE_STORE_COMMIT_ENABLE_FLAG ;
 int CERT_STORE_CREATE_NEW_FLAG ;
 int CERT_STORE_DELETE_FLAG ;
 int CERT_STORE_NO_CRYPT_RELEASE_FLAG ;
 int CERT_STORE_PROV_MEMORY ;
 int CERT_STORE_READONLY_FLAG ;
 int CERT_STORE_SAVE_AS_STORE ;
 int * CRYPT_CreateFileStore (int,scalar_t__,int ,int ) ;
 scalar_t__ CRYPT_ReadSerializedStoreFromFile (int ,scalar_t__) ;
 scalar_t__ CertOpenStore (int ,int ,int ,int ,int *) ;
 int CryptReleaseContext (scalar_t__,int ) ;
 scalar_t__ DuplicateHandle (int ,int ,int ,int *,int,int ,int ) ;
 int ERROR_INVALID_HANDLE ;
 int E_INVALIDARG ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetCurrentProcess () ;
 int SetLastError (int ) ;
 int TRACE (char*,int *,...) ;
 int TRUE ;

WINECRYPT_CERTSTORE *CRYPT_FileOpenStore(HCRYPTPROV hCryptProv, DWORD dwFlags,
 const void *pvPara)
{
    WINECRYPT_CERTSTORE *store = ((void*)0);
    HANDLE file = (HANDLE)pvPara;

    TRACE("(%ld, %08x, %p)\n", hCryptProv, dwFlags, pvPara);

    if (!pvPara)
    {
        SetLastError(ERROR_INVALID_HANDLE);
        return ((void*)0);
    }
    if (dwFlags & CERT_STORE_DELETE_FLAG)
    {
        SetLastError(E_INVALIDARG);
        return ((void*)0);
    }
    if ((dwFlags & CERT_STORE_READONLY_FLAG) &&
     (dwFlags & CERT_FILE_STORE_COMMIT_ENABLE_FLAG))
    {
        SetLastError(E_INVALIDARG);
        return ((void*)0);
    }

    if (DuplicateHandle(GetCurrentProcess(), (HANDLE)pvPara,
     GetCurrentProcess(), &file, dwFlags & CERT_STORE_READONLY_FLAG ?
     GENERIC_READ : GENERIC_READ | GENERIC_WRITE, TRUE, 0))
    {
        HCERTSTORE memStore;

        memStore = CertOpenStore(CERT_STORE_PROV_MEMORY, 0, 0,
         CERT_STORE_CREATE_NEW_FLAG, ((void*)0));
        if (memStore)
        {
            if (CRYPT_ReadSerializedStoreFromFile(file, memStore))
            {
                store = CRYPT_CreateFileStore(dwFlags, memStore, file,
                 CERT_STORE_SAVE_AS_STORE);

                if (hCryptProv &&
                 !(dwFlags & CERT_STORE_NO_CRYPT_RELEASE_FLAG))
                    CryptReleaseContext(hCryptProv, 0);
            }
        }
    }
    TRACE("returning %p\n", store);
    return store;
}
