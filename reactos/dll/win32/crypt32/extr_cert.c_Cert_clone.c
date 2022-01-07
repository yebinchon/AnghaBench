
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int context_t ;
struct TYPE_6__ {int * hCertStore; int pCertInfo; int cbCertEncoded; int pbCertEncoded; int dwCertEncodingType; } ;
struct TYPE_5__ {int base; TYPE_2__ ctx; } ;
typedef TYPE_1__ cert_t ;
typedef int WINECRYPT_CERTSTORE ;
typedef int DWORD ;
typedef int CERT_CONTEXT ;
typedef scalar_t__ BOOL ;


 int CRYPT_DECODE_ALLOC_FLAG ;
 int CertFreeCertificateContext (TYPE_2__*) ;
 int Context_CopyProperties (TYPE_2__*,TYPE_2__*) ;
 scalar_t__ Context_CreateDataContext (int,int *,int *) ;
 scalar_t__ Context_CreateLinkContext (int,int *,int *) ;
 scalar_t__ CryptDecodeObjectEx (int ,int ,int ,int ,int ,int *,int *,int *) ;
 int CryptMemAlloc (int ) ;
 int X509_CERT_TO_BE_SIGNED ;
 int cert_vtbl ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static context_t *Cert_clone(context_t *context, WINECRYPT_CERTSTORE *store, BOOL use_link)
{
    cert_t *cert;

    if(use_link) {
        cert = (cert_t*)Context_CreateLinkContext(sizeof(CERT_CONTEXT), context, store);
        if(!cert)
            return ((void*)0);
    }else {
        const cert_t *cloned = (const cert_t*)context;
        DWORD size = 0;
        BOOL res;

        cert = (cert_t*)Context_CreateDataContext(sizeof(CERT_CONTEXT), &cert_vtbl, store);
        if(!cert)
            return ((void*)0);

        Context_CopyProperties(&cert->ctx, &cloned->ctx);

        cert->ctx.dwCertEncodingType = cloned->ctx.dwCertEncodingType;
        cert->ctx.pbCertEncoded = CryptMemAlloc(cloned->ctx.cbCertEncoded);
        memcpy(cert->ctx.pbCertEncoded, cloned->ctx.pbCertEncoded, cloned->ctx.cbCertEncoded);
        cert->ctx.cbCertEncoded = cloned->ctx.cbCertEncoded;


        res = CryptDecodeObjectEx(cert->ctx.dwCertEncodingType, X509_CERT_TO_BE_SIGNED,
         cert->ctx.pbCertEncoded, cert->ctx.cbCertEncoded, CRYPT_DECODE_ALLOC_FLAG, ((void*)0),
         &cert->ctx.pCertInfo, &size);
        if(!res) {
            CertFreeCertificateContext(&cert->ctx);
            return ((void*)0);
        }
    }

    cert->ctx.hCertStore = store;
    return &cert->base;
}
