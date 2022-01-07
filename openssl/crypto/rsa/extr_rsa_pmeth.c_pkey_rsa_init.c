
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int keygen_info_count; int keygen_info; TYPE_1__* data; } ;
struct TYPE_6__ {int nbits; int min_saltlen; int gentmp; int saltlen; int pad_mode; int primes; } ;
typedef TYPE_1__ RSA_PKEY_CTX ;
typedef TYPE_2__ EVP_PKEY_CTX ;


 TYPE_1__* OPENSSL_zalloc (int) ;
 int RSA_DEFAULT_PRIME_NUM ;
 int RSA_PKCS1_PADDING ;
 int RSA_PKCS1_PSS_PADDING ;
 int RSA_PSS_SALTLEN_AUTO ;
 scalar_t__ pkey_ctx_is_pss (TYPE_2__*) ;

__attribute__((used)) static int pkey_rsa_init(EVP_PKEY_CTX *ctx)
{
    RSA_PKEY_CTX *rctx = OPENSSL_zalloc(sizeof(*rctx));

    if (rctx == ((void*)0))
        return 0;
    rctx->nbits = 2048;
    rctx->primes = RSA_DEFAULT_PRIME_NUM;
    if (pkey_ctx_is_pss(ctx))
        rctx->pad_mode = RSA_PKCS1_PSS_PADDING;
    else
        rctx->pad_mode = RSA_PKCS1_PADDING;

    rctx->saltlen = RSA_PSS_SALTLEN_AUTO;
    rctx->min_saltlen = -1;
    ctx->data = rctx;
    ctx->keygen_info = rctx->gentmp;
    ctx->keygen_info_count = 2;

    return 1;
}
