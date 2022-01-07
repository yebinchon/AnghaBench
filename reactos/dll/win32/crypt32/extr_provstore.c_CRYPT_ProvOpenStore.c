
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int provInfo ;
typedef int WINECRYPT_CERTSTORE ;
struct TYPE_4__ {int cbSize; int member_0; } ;
typedef scalar_t__ (* PFN_CERT_DLL_OPEN_STORE_PROV_FUNC ) (int ,int,int ,int,void const*,int *,TYPE_1__*) ;
typedef int LPCSTR ;
typedef int HCRYPTPROV ;
typedef int * HCRYPTOIDFUNCSET ;
typedef int HCRYPTOIDFUNCADDR ;
typedef int * HCERTSTORE ;
typedef int DWORD ;
typedef TYPE_1__ CERT_STORE_PROV_INFO ;


 int CERT_STORE_CREATE_NEW_FLAG ;
 int CERT_STORE_DELETE_FLAG ;
 int CERT_STORE_PROV_MEMORY ;
 int CRYPT_OID_OPEN_STORE_PROV_FUNC ;
 int * CRYPT_ProvCreateStore (int,int *,TYPE_1__*) ;
 int CertCloseStore (int *,int ) ;
 int * CertOpenStore (int ,int ,int ,int ,int *) ;
 int CryptFreeOIDFunctionAddress (int ,int ) ;
 int CryptGetOIDFunctionAddress (int *,int,int ,int ,void**,int *) ;
 int * CryptInitOIDFunctionSet (int ,int ) ;
 int ERROR_FILE_NOT_FOUND ;
 int SetLastError (int ) ;

WINECRYPT_CERTSTORE *CRYPT_ProvOpenStore(LPCSTR lpszStoreProvider,
 DWORD dwEncodingType, HCRYPTPROV hCryptProv, DWORD dwFlags, const void *pvPara)
{
    static HCRYPTOIDFUNCSET set = ((void*)0);
    PFN_CERT_DLL_OPEN_STORE_PROV_FUNC provOpenFunc;
    HCRYPTOIDFUNCADDR hFunc;
    WINECRYPT_CERTSTORE *ret = ((void*)0);

    if (!set)
        set = CryptInitOIDFunctionSet(CRYPT_OID_OPEN_STORE_PROV_FUNC, 0);
    CryptGetOIDFunctionAddress(set, dwEncodingType, lpszStoreProvider, 0,
     (void **)&provOpenFunc, &hFunc);
    if (provOpenFunc)
    {
        CERT_STORE_PROV_INFO provInfo = { 0 };

        provInfo.cbSize = sizeof(provInfo);
        if (dwFlags & CERT_STORE_DELETE_FLAG)
            provOpenFunc(lpszStoreProvider, dwEncodingType, hCryptProv,
             dwFlags, pvPara, ((void*)0), &provInfo);
        else
        {
            HCERTSTORE memStore;

            memStore = CertOpenStore(CERT_STORE_PROV_MEMORY, 0, 0,
             CERT_STORE_CREATE_NEW_FLAG, ((void*)0));
            if (memStore)
            {
                if (provOpenFunc(lpszStoreProvider, dwEncodingType, hCryptProv,
                 dwFlags, pvPara, memStore, &provInfo))
                    ret = CRYPT_ProvCreateStore(dwFlags, memStore, &provInfo);
                else
                    CertCloseStore(memStore, 0);
            }
        }
        CryptFreeOIDFunctionAddress(hFunc, 0);
    }
    else
        SetLastError(ERROR_FILE_NOT_FOUND);
    return ret;
}
