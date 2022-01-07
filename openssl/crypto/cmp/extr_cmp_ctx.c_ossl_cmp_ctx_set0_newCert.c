
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_3__ {int * newCert; } ;
typedef TYPE_1__ OSSL_CMP_CTX ;


 int X509_free (int *) ;
 int ossl_assert (int ) ;

int ossl_cmp_ctx_set0_newCert(OSSL_CMP_CTX *ctx, X509 *cert)
{
    if (!ossl_assert(ctx != ((void*)0)))
        return 0;

    X509_free(ctx->newCert);
    ctx->newCert = cert;
    return 1;
}
