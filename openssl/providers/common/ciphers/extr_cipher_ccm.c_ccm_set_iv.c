
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int len_set; int iv; TYPE_1__* hw; } ;
struct TYPE_6__ {int (* setiv ) (TYPE_2__*,int ,int ,size_t) ;} ;
typedef TYPE_1__ PROV_CCM_HW ;
typedef TYPE_2__ PROV_CCM_CTX ;


 int ccm_get_ivlen (TYPE_2__*) ;
 int stub1 (TYPE_2__*,int ,int ,size_t) ;

__attribute__((used)) static int ccm_set_iv(PROV_CCM_CTX *ctx, size_t mlen)
{
    const PROV_CCM_HW *hw = ctx->hw;

    if (!hw->setiv(ctx, ctx->iv, ccm_get_ivlen(ctx), mlen))
        return 0;
    ctx->len_set = 1;
    return 1;
}
