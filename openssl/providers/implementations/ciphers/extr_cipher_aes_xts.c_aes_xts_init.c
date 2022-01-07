
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int enc; size_t keylen; TYPE_1__* hw; } ;
struct TYPE_7__ {TYPE_2__ base; } ;
struct TYPE_5__ {int (* init ) (TYPE_2__*,unsigned char const*,size_t) ;} ;
typedef TYPE_2__ PROV_CIPHER_CTX ;
typedef TYPE_3__ PROV_AES_XTS_CTX ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int PROV_R_INVALID_KEY_LENGTH ;
 int aes_xts_check_keys_differ (unsigned char const*,size_t,int) ;
 int cipher_generic_initiv (void*,unsigned char const*,size_t) ;
 int stub1 (TYPE_2__*,unsigned char const*,size_t) ;

__attribute__((used)) static int aes_xts_init(void *vctx, const unsigned char *key, size_t keylen,
                        const unsigned char *iv, size_t ivlen, int enc)
{
    PROV_AES_XTS_CTX *xctx = (PROV_AES_XTS_CTX *)vctx;
    PROV_CIPHER_CTX *ctx = &xctx->base;

    ctx->enc = enc;

    if (iv != ((void*)0)) {
        if (!cipher_generic_initiv(vctx, iv, ivlen))
            return 0;
    }
    if (key != ((void*)0)) {
        if (keylen != ctx->keylen) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_KEY_LENGTH);
            return 0;
        }
        if (!aes_xts_check_keys_differ(key, keylen / 2, enc))
            return 0;
        return ctx->hw->init(ctx, key, keylen);
    }
    return 1;
}
