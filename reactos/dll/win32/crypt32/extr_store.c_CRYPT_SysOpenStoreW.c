
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINECRYPT_CERTSTORE ;
typedef scalar_t__ HCRYPTPROV ;
typedef int * HCERTSTORE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CERT_PHYSICAL_STORE_ADD_ENABLE_FLAG ;
 int CERT_STORE_CREATE_NEW_FLAG ;
 int CERT_STORE_NO_CRYPT_RELEASE_FLAG ;
 int CERT_STORE_PROV_COLLECTION ;
 int CERT_STORE_PROV_SYSTEM_REGISTRY_W ;
 int CERT_STORE_READONLY_FLAG ;






 int CERT_SYSTEM_STORE_LOCATION_MASK ;


 int CertAddStoreToCollection (int *,int *,int ,int ) ;
 int CertCloseStore (int *,int ) ;
 int * CertOpenStore (int ,int ,int ,int,void const*) ;
 int CryptReleaseContext (scalar_t__,int ) ;
 int ERROR_FILE_NOT_FOUND ;
 scalar_t__ FALSE ;
 int SetLastError (int ) ;
 int TRACE (char*,scalar_t__,int,int ) ;
 scalar_t__ TRUE ;
 int debugstr_w (void const*) ;

__attribute__((used)) static WINECRYPT_CERTSTORE *CRYPT_SysOpenStoreW(HCRYPTPROV hCryptProv,
 DWORD dwFlags, const void *pvPara)
{
    HCERTSTORE store = 0;
    BOOL ret;

    TRACE("(%ld, %08x, %s)\n", hCryptProv, dwFlags,
     debugstr_w(pvPara));

    if (!pvPara)
    {
        SetLastError(ERROR_FILE_NOT_FOUND);
        return ((void*)0);
    }



    switch (dwFlags & CERT_SYSTEM_STORE_LOCATION_MASK)
    {
    case 132:
    case 134:
    case 135:
    case 129:
    case 128:
    case 133:
    case 130:
    case 131:
        ret = TRUE;
        break;
    default:
        SetLastError(ERROR_FILE_NOT_FOUND);
        ret = FALSE;
    }
    if (ret)
    {
        HCERTSTORE regStore = CertOpenStore(CERT_STORE_PROV_SYSTEM_REGISTRY_W,
         0, 0, dwFlags, pvPara);

        if (regStore)
        {
            store = CertOpenStore(CERT_STORE_PROV_COLLECTION, 0, 0,
             CERT_STORE_CREATE_NEW_FLAG, ((void*)0));
            CertAddStoreToCollection(store, regStore,
             dwFlags & CERT_STORE_READONLY_FLAG ? 0 :
             CERT_PHYSICAL_STORE_ADD_ENABLE_FLAG, 0);
            CertCloseStore(regStore, 0);



            if ((dwFlags & CERT_SYSTEM_STORE_LOCATION_MASK) ==
             134)
            {
                dwFlags &= ~134;
                dwFlags |= 132;
                regStore = CertOpenStore(CERT_STORE_PROV_SYSTEM_REGISTRY_W, 0,
                 0, dwFlags, pvPara);
                if (regStore)
                {
                    CertAddStoreToCollection(store, regStore,
                     dwFlags & CERT_STORE_READONLY_FLAG ? 0 :
                     CERT_PHYSICAL_STORE_ADD_ENABLE_FLAG, 0);
                    CertCloseStore(regStore, 0);
                }
            }

            if (hCryptProv && !(dwFlags & CERT_STORE_NO_CRYPT_RELEASE_FLAG))
                CryptReleaseContext(hCryptProv, 0);
        }
    }
    return store;
}
