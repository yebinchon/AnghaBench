
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int enc; size_t keylen; TYPE_1__* hw; } ;
struct TYPE_4__ {int (* initkey ) (TYPE_2__*,unsigned char const*,size_t) ;} ;
typedef TYPE_2__ PROV_AES_SIV_CTX ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int PROV_R_INVALID_KEY_LENGTH ;
 int stub1 (TYPE_2__*,unsigned char const*,size_t) ;

__attribute__((used)) static int siv_init(void *vctx, const unsigned char *key, size_t keylen,
                    const unsigned char *iv, size_t ivlen, int enc)
{
    PROV_AES_SIV_CTX *ctx = (PROV_AES_SIV_CTX *)vctx;

    ctx->enc = enc;

    if (iv != ((void*)0))
        return 0;

    if (key != ((void*)0)) {
        if (keylen != ctx->keylen) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_KEY_LENGTH);
            return 0;
        }
        return ctx->hw->initkey(ctx, key, ctx->keylen);
    }
    return 1;
}
