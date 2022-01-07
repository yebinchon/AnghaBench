
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int enc; int iv_set; size_t keylen; TYPE_1__* hw; int iv; } ;
struct TYPE_5__ {int (* setkey ) (TYPE_2__*,unsigned char const*,size_t) ;} ;
typedef TYPE_2__ PROV_CCM_CTX ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int PROV_R_INVALID_IVLEN ;
 int PROV_R_INVALID_KEYLEN ;
 size_t ccm_get_ivlen (TYPE_2__*) ;
 int memcpy (int ,unsigned char const*,size_t) ;
 int stub1 (TYPE_2__*,unsigned char const*,size_t) ;

__attribute__((used)) static int ccm_init(void *vctx, const unsigned char *key, size_t keylen,
                    const unsigned char *iv, size_t ivlen, int enc)
{
    PROV_CCM_CTX *ctx = (PROV_CCM_CTX *)vctx;

    ctx->enc = enc;

    if (iv != ((void*)0)) {
        if (ivlen != ccm_get_ivlen(ctx)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_IVLEN);
            return 0;
        }
        memcpy(ctx->iv, iv, ivlen);
        ctx->iv_set = 1;
    }
    if (key != ((void*)0)) {
        if (keylen != ctx->keylen) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_KEYLEN);
            return 0;
        }
        return ctx->hw->setkey(ctx, key, keylen);
    }
    return 1;
}
