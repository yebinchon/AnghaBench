
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nlast_block; int * cctx; } ;
typedef TYPE_1__ CMAC_CTX ;


 int CRYPTO_F_CMAC_CTX_NEW ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int * EVP_CIPHER_CTX_new () ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_malloc (int) ;

CMAC_CTX *CMAC_CTX_new(void)
{
    CMAC_CTX *ctx;

    if ((ctx = OPENSSL_malloc(sizeof(*ctx))) == ((void*)0)) {
        CRYPTOerr(CRYPTO_F_CMAC_CTX_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    ctx->cctx = EVP_CIPHER_CTX_new();
    if (ctx->cctx == ((void*)0)) {
        OPENSSL_free(ctx);
        return ((void*)0);
    }
    ctx->nlast_block = -1;
    return ctx;
}
