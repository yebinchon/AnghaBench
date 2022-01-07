
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int enc; size_t keylen; TYPE_1__* hw; } ;
struct TYPE_5__ {int (* init ) (TYPE_2__*,unsigned char const*,size_t) ;} ;
typedef TYPE_2__ PROV_CIPHER_CTX ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int PROV_R_INVALID_KEYLEN ;
 int cipher_generic_initiv (TYPE_2__*,unsigned char const*,size_t) ;
 int stub1 (TYPE_2__*,unsigned char const*,size_t) ;

__attribute__((used)) static int des_init(void *vctx, const unsigned char *key, size_t keylen,
                    const unsigned char *iv, size_t ivlen, int enc)
{
    PROV_CIPHER_CTX *ctx = (PROV_CIPHER_CTX *)vctx;

    ctx->enc = enc;

    if (iv != ((void*)0)) {
        if (!cipher_generic_initiv(ctx, iv, ivlen))
            return 0;
    }

    if (key != ((void*)0)) {
        if (keylen != ctx->keylen) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_KEYLEN);
            return 0;
        }
        return ctx->hw->init(ctx, key, keylen);
    }
    return 1;
}
