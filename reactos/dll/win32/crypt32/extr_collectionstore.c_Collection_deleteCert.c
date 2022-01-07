
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ linked; } ;
typedef TYPE_1__ context_t ;
struct TYPE_6__ {int ctx; } ;
typedef TYPE_2__ cert_t ;
typedef int WINECRYPT_CERTSTORE ;
typedef int BOOL ;


 int CertDeleteCertificateFromStore (int *) ;
 int TRACE (char*,int *,TYPE_2__*) ;

__attribute__((used)) static BOOL Collection_deleteCert(WINECRYPT_CERTSTORE *store, context_t *context)
{
    cert_t *cert = (cert_t*)context;
    cert_t *linked;

    TRACE("(%p, %p)\n", store, cert);

    linked = (cert_t*)context->linked;
    return CertDeleteCertificateFromStore(&linked->ctx);
}
