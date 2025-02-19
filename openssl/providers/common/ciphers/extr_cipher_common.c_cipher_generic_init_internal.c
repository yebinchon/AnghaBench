
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int enc; scalar_t__ mode; int flags; size_t keylen; TYPE_1__* hw; } ;
struct TYPE_6__ {int (* init ) (TYPE_2__*,unsigned char const*,size_t) ;} ;
typedef TYPE_2__ PROV_CIPHER_CTX ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 scalar_t__ EVP_CIPH_ECB_MODE ;
 int EVP_CIPH_VARIABLE_LENGTH ;
 int PROV_R_INVALID_KEYLEN ;
 int cipher_generic_initiv (TYPE_2__*,unsigned char const*,size_t) ;
 int stub1 (TYPE_2__*,unsigned char const*,size_t) ;

__attribute__((used)) static int cipher_generic_init_internal(PROV_CIPHER_CTX *ctx,
                                        const unsigned char *key, size_t keylen,
                                        const unsigned char *iv, size_t ivlen,
                                        int enc)
{
    ctx->enc = enc ? 1 : 0;

    if (iv != ((void*)0) && ctx->mode != EVP_CIPH_ECB_MODE) {
        if (!cipher_generic_initiv(ctx, iv, ivlen))
            return 0;
    }
    if (key != ((void*)0)) {
        if ((ctx->flags & EVP_CIPH_VARIABLE_LENGTH) == 0) {
            if (keylen != ctx->keylen) {
                ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_KEYLEN);
                return 0;
            }
        } else {
            ctx->keylen = keylen;
        }
        return ctx->hw->init(ctx, key, ctx->keylen);
    }
    return 1;
}
