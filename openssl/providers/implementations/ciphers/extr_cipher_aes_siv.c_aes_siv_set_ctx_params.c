
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ data_type; int data_size; int data; } ;
struct TYPE_12__ {size_t keylen; TYPE_1__* hw; scalar_t__ enc; } ;
struct TYPE_11__ {int (* setspeed ) (TYPE_2__*,int) ;int (* settag ) (TYPE_2__*,int ,int ) ;} ;
typedef TYPE_2__ PROV_AES_SIV_CTX ;
typedef TYPE_3__ OSSL_PARAM ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int OSSL_CIPHER_PARAM_AEAD_TAG ;
 int OSSL_CIPHER_PARAM_KEYLEN ;
 int OSSL_CIPHER_PARAM_SPEED ;
 scalar_t__ OSSL_PARAM_OCTET_STRING ;
 int OSSL_PARAM_get_size_t (TYPE_3__ const*,size_t*) ;
 int OSSL_PARAM_get_uint (TYPE_3__ const*,unsigned int*) ;
 TYPE_3__* OSSL_PARAM_locate_const (TYPE_3__ const*,int ) ;
 int PROV_R_FAILED_TO_GET_PARAMETER ;
 int stub1 (TYPE_2__*,int ,int ) ;
 int stub2 (TYPE_2__*,int) ;

__attribute__((used)) static int aes_siv_set_ctx_params(void *vctx, const OSSL_PARAM params[])
{
    PROV_AES_SIV_CTX *ctx = (PROV_AES_SIV_CTX *)vctx;
    const OSSL_PARAM *p;
    unsigned int speed = 0;

    p = OSSL_PARAM_locate_const(params, OSSL_CIPHER_PARAM_AEAD_TAG);
    if (p != ((void*)0)) {
        if (ctx->enc)
            return 1;
        if (p->data_type != OSSL_PARAM_OCTET_STRING
            || !ctx->hw->settag(ctx, p->data, p->data_size)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
    }
    p = OSSL_PARAM_locate_const(params, OSSL_CIPHER_PARAM_SPEED);
    if (p != ((void*)0)) {
        if (!OSSL_PARAM_get_uint(p, &speed)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        ctx->hw->setspeed(ctx, (int)speed);
    }
    p = OSSL_PARAM_locate_const(params, OSSL_CIPHER_PARAM_KEYLEN);
    if (p != ((void*)0)) {
        size_t keylen;

        if (!OSSL_PARAM_get_size_t(p, &keylen)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }

        if (keylen != ctx->keylen)
            return 0;
    }
    return 1;
}
