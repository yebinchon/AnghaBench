
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINECRYPT_CERTSTORE ;
typedef int HCRYPTPROV ;
typedef int * HCERTSTORE ;
typedef int DWORD ;
typedef int CRYPT_DATA_BLOB ;


 int CERT_STORE_CREATE_NEW_FLAG ;
 int CERT_STORE_DELETE_FLAG ;
 int CERT_STORE_PROV_MEMORY ;
 int CRYPT_ReadSerializedStoreFromBlob (int const*,int *) ;
 int CertCloseStore (int *,int ) ;
 int * CertOpenStore (int ,int ,int ,int ,int *) ;
 int ERROR_CALL_NOT_IMPLEMENTED ;
 int SetLastError (int ) ;
 int TRACE (char*,int *,...) ;

__attribute__((used)) static WINECRYPT_CERTSTORE *CRYPT_SerializedOpenStore(HCRYPTPROV hCryptProv,
 DWORD dwFlags, const void *pvPara)
{
    HCERTSTORE store;
    const CRYPT_DATA_BLOB *data = pvPara;

    TRACE("(%ld, %08x, %p)\n", hCryptProv, dwFlags, pvPara);

    if (dwFlags & CERT_STORE_DELETE_FLAG)
    {
        SetLastError(ERROR_CALL_NOT_IMPLEMENTED);
        return ((void*)0);
    }

    store = CertOpenStore(CERT_STORE_PROV_MEMORY, 0, 0,
     CERT_STORE_CREATE_NEW_FLAG, ((void*)0));
    if (store)
    {
        if (!CRYPT_ReadSerializedStoreFromBlob(data, store))
        {
            CertCloseStore(store, 0);
            store = ((void*)0);
        }
    }
    TRACE("returning %p\n", store);
    return (WINECRYPT_CERTSTORE*)store;
}
