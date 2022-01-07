
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cctx; } ;
typedef TYPE_1__ CMAC_CTX ;


 int CMAC_CTX_cleanup (TYPE_1__*) ;
 int EVP_CIPHER_CTX_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;

void CMAC_CTX_free(CMAC_CTX *ctx)
{
    if (!ctx)
        return;
    CMAC_CTX_cleanup(ctx);
    EVP_CIPHER_CTX_free(ctx->cctx);
    OPENSSL_free(ctx);
}
