
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int block128_f ;
struct TYPE_5__ {int ks; } ;
struct TYPE_7__ {TYPE_1__ ks; } ;
struct TYPE_6__ {int key_set; int * str; int l; int m; int ccm_ctx; } ;
typedef TYPE_2__ PROV_CCM_CTX ;
typedef TYPE_3__ PROV_ARIA_CCM_CTX ;


 int CRYPTO_ccm128_init (int *,int ,int ,int *,int ) ;
 scalar_t__ aria_encrypt ;
 int aria_set_encrypt_key (unsigned char const*,size_t,int *) ;

__attribute__((used)) static int ccm_aria_initkey(PROV_CCM_CTX *ctx,
                            const unsigned char *key, size_t keylen)
{
    PROV_ARIA_CCM_CTX *actx = (PROV_ARIA_CCM_CTX *)ctx;

    aria_set_encrypt_key(key, keylen * 8, &actx->ks.ks);
    CRYPTO_ccm128_init(&ctx->ccm_ctx, ctx->m, ctx->l, &actx->ks.ks,
                       (block128_f)aria_encrypt);
    ctx->str = ((void*)0);
    ctx->key_set = 1;
    return 1;
}
