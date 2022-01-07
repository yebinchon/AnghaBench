
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* block128_f ;
struct TYPE_7__ {scalar_t__ mode; void* block; scalar_t__ enc; int * ks; } ;
struct TYPE_5__ {int ks; } ;
struct TYPE_6__ {TYPE_1__ ks; } ;
typedef int SM4_KEY ;
typedef TYPE_2__ PROV_SM4_CTX ;
typedef TYPE_3__ PROV_CIPHER_CTX ;


 scalar_t__ EVP_CIPH_CBC_MODE ;
 scalar_t__ EVP_CIPH_ECB_MODE ;
 scalar_t__ SM4_decrypt ;
 scalar_t__ SM4_encrypt ;
 int SM4_set_key (unsigned char const*,int *) ;

__attribute__((used)) static int cipher_hw_sm4_initkey(PROV_CIPHER_CTX *ctx,
                                 const unsigned char *key, size_t keylen)
{
    PROV_SM4_CTX *sctx = (PROV_SM4_CTX *)ctx;
    SM4_KEY *ks = &sctx->ks.ks;

    SM4_set_key(key, ks);
    ctx->ks = ks;
    if (ctx->enc
            || (ctx->mode != EVP_CIPH_ECB_MODE
                && ctx->mode != EVP_CIPH_CBC_MODE))
        ctx->block = (block128_f)SM4_encrypt;
    else
        ctx->block = (block128_f)SM4_decrypt;
    return 1;
}
