
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t keylen; int l; int m; int const* hw; int tls_aad_len; scalar_t__ len_set; scalar_t__ tag_set; scalar_t__ iv_set; scalar_t__ key_set; } ;
typedef int PROV_CCM_HW ;
typedef TYPE_1__ PROV_CCM_CTX ;


 int UNINITIALISED_SIZET ;

void ccm_initctx(PROV_CCM_CTX *ctx, size_t keybits, const PROV_CCM_HW *hw)
{
    ctx->keylen = keybits / 8;
    ctx->key_set = 0;
    ctx->iv_set = 0;
    ctx->tag_set = 0;
    ctx->len_set = 0;
    ctx->l = 8;
    ctx->m = 12;
    ctx->tls_aad_len = UNINITIALISED_SIZET;
    ctx->hw = hw;
}
