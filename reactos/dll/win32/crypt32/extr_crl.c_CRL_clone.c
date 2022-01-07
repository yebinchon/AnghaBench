
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * hCertStore; int pCrlInfo; int cbCrlEncoded; int pbCrlEncoded; int dwCertEncodingType; } ;
struct TYPE_5__ {int base; TYPE_2__ ctx; } ;
typedef TYPE_1__ crl_t ;
typedef int context_t ;
typedef int WINECRYPT_CERTSTORE ;
typedef int DWORD ;
typedef int CRL_CONTEXT ;
typedef scalar_t__ BOOL ;


 int CRYPT_DECODE_ALLOC_FLAG ;
 int CertFreeCRLContext (TYPE_2__*) ;
 int Context_CopyProperties (TYPE_2__*,TYPE_2__*) ;
 scalar_t__ Context_CreateDataContext (int,int *,int *) ;
 scalar_t__ Context_CreateLinkContext (int,int *,int *) ;
 scalar_t__ CryptDecodeObjectEx (int ,int ,int ,int ,int ,int *,int *,int *) ;
 int CryptMemAlloc (int ) ;
 int X509_CERT_CRL_TO_BE_SIGNED ;
 int crl_vtbl ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static context_t *CRL_clone(context_t *context, WINECRYPT_CERTSTORE *store, BOOL use_link)
{
    crl_t *crl;

    if(use_link) {
        crl = (crl_t*)Context_CreateLinkContext(sizeof(CRL_CONTEXT), context, store);
        if(!crl)
            return ((void*)0);
    }else {
        const crl_t *cloned = (const crl_t*)context;
        DWORD size = 0;
        BOOL res;

        crl = (crl_t*)Context_CreateDataContext(sizeof(CRL_CONTEXT), &crl_vtbl, store);
        if(!crl)
            return ((void*)0);

        Context_CopyProperties(&crl->ctx, &cloned->ctx);

        crl->ctx.dwCertEncodingType = cloned->ctx.dwCertEncodingType;
        crl->ctx.pbCrlEncoded = CryptMemAlloc(cloned->ctx.cbCrlEncoded);
        memcpy(crl->ctx.pbCrlEncoded, cloned->ctx.pbCrlEncoded, cloned->ctx.cbCrlEncoded);
        crl->ctx.cbCrlEncoded = cloned->ctx.cbCrlEncoded;


        res = CryptDecodeObjectEx(crl->ctx.dwCertEncodingType, X509_CERT_CRL_TO_BE_SIGNED,
         crl->ctx.pbCrlEncoded, crl->ctx.cbCrlEncoded, CRYPT_DECODE_ALLOC_FLAG, ((void*)0),
         &crl->ctx.pCrlInfo, &size);
        if(!res) {
            CertFreeCRLContext(&crl->ctx);
            return ((void*)0);
        }
    }

    crl->ctx.hCertStore = store;
    return &crl->base;
}
