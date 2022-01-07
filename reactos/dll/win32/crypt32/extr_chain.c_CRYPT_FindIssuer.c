
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int dwCertEncodingType; } ;
struct TYPE_12__ {unsigned int cUrl; int * rgwszUrl; } ;
struct TYPE_11__ {scalar_t__ hWorld; } ;
typedef int * PCCERT_CONTEXT ;
typedef scalar_t__ HCERTSTORE ;
typedef int DWORD ;
typedef TYPE_1__ CertificateChainEngine ;
typedef TYPE_2__ CRYPT_URL_ARRAY ;
typedef TYPE_3__ CERT_CONTEXT ;
typedef scalar_t__ BOOL ;


 int CERT_CHAIN_CACHE_ONLY_URL_RETRIEVAL ;
 int CERT_STORE_ADD_NEW ;
 int CERT_STORE_CREATE_NEW_FLAG ;
 int CERT_STORE_PROV_MEMORY ;
 int CONTEXT_OID_CERTIFICATE ;
 int CRYPT_AIA_RETRIEVAL ;
 int CRYPT_CACHE_ONLY_RETRIEVAL ;
 int CertAddCertificateContextToStore (scalar_t__,TYPE_3__*,int ,int *) ;
 int CertCloseStore (scalar_t__,int ) ;
 int * CertFindCertificateInStore (scalar_t__,int ,int ,int,void*,int *) ;
 int CertFreeCertificateContext (TYPE_3__*) ;
 scalar_t__ CertOpenStore (int ,int ,int ,int ,int *) ;
 scalar_t__ CryptGetObjectUrl (int ,void*,int ,TYPE_2__*,int*,int *,int *,int *) ;
 scalar_t__ CryptRetrieveObjectByUrlW (int ,int ,int ,int ,void**,int *,int *,int *,int *) ;
 int * GetLastError () ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int TRACE (char*,int *) ;
 int URL_OID_CERTIFICATE_ISSUER ;
 int * debugstr_w (int ) ;

__attribute__((used)) static PCCERT_CONTEXT CRYPT_FindIssuer(const CertificateChainEngine *engine, const CERT_CONTEXT *cert,
        HCERTSTORE store, DWORD type, void *para, DWORD flags, PCCERT_CONTEXT prev_issuer)
{
    CRYPT_URL_ARRAY *urls;
    PCCERT_CONTEXT issuer;
    DWORD size;
    BOOL res;

    issuer = CertFindCertificateInStore(store, cert->dwCertEncodingType, 0, type, para, prev_issuer);
    if(issuer) {
        TRACE("Found in store %p\n", issuer);
        return issuer;
    }




    if(prev_issuer)
        return ((void*)0);

    if(engine->hWorld) {
        issuer = CertFindCertificateInStore(engine->hWorld, cert->dwCertEncodingType, 0, type, para, ((void*)0));
        if(issuer) {
            TRACE("Found in world %p\n", issuer);
            return issuer;
        }
    }

    res = CryptGetObjectUrl(URL_OID_CERTIFICATE_ISSUER, (void*)cert, 0, ((void*)0), &size, ((void*)0), ((void*)0), ((void*)0));
    if(!res)
        return ((void*)0);

    urls = HeapAlloc(GetProcessHeap(), 0, size);
    if(!urls)
        return ((void*)0);

    res = CryptGetObjectUrl(URL_OID_CERTIFICATE_ISSUER, (void*)cert, 0, urls, &size, ((void*)0), ((void*)0), ((void*)0));
    if(res)
    {
        CERT_CONTEXT *new_cert;
        HCERTSTORE new_store;
        unsigned i;

        for(i=0; i < urls->cUrl; i++)
        {
            TRACE("Trying URL %s\n", debugstr_w(urls->rgwszUrl[i]));

            res = CryptRetrieveObjectByUrlW(urls->rgwszUrl[i], CONTEXT_OID_CERTIFICATE,
             (flags & CERT_CHAIN_CACHE_ONLY_URL_RETRIEVAL) ? CRYPT_CACHE_ONLY_RETRIEVAL : CRYPT_AIA_RETRIEVAL,
             0, (void**)&new_cert, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
            if(!res)
            {
                TRACE("CryptRetrieveObjectByUrlW failed: %u\n", GetLastError());
                continue;
            }


            new_store = CertOpenStore(CERT_STORE_PROV_MEMORY, 0, 0, CERT_STORE_CREATE_NEW_FLAG, ((void*)0));
            CertAddCertificateContextToStore(new_store, new_cert, CERT_STORE_ADD_NEW, ((void*)0));
            issuer = CertFindCertificateInStore(new_store, cert->dwCertEncodingType, 0, type, para, ((void*)0));
            CertFreeCertificateContext(new_cert);
            CertCloseStore(new_store, 0);
            if(issuer)
            {
                TRACE("Found downloaded issuer %p\n", issuer);
                break;
            }
        }
    }

    HeapFree(GetProcessHeap(), 0, urls);
    return issuer;
}
