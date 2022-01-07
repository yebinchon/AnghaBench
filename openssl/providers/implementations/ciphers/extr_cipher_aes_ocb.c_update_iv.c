
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ivlen; int iv; } ;
struct TYPE_6__ {scalar_t__ iv_state; int taglen; TYPE_1__ base; } ;
typedef TYPE_2__ PROV_AES_OCB_CTX ;


 scalar_t__ IV_STATE_BUFFERED ;
 scalar_t__ IV_STATE_COPIED ;
 scalar_t__ IV_STATE_FINISHED ;
 scalar_t__ IV_STATE_UNINITIALISED ;
 int aes_generic_ocb_setiv (TYPE_2__*,int ,int ,int ) ;

__attribute__((used)) static int update_iv(PROV_AES_OCB_CTX *ctx)
{
    if (ctx->iv_state == IV_STATE_FINISHED
        || ctx->iv_state == IV_STATE_UNINITIALISED)
        return 0;
    if (ctx->iv_state == IV_STATE_BUFFERED) {
        if (!aes_generic_ocb_setiv(ctx, ctx->base.iv, ctx->base.ivlen,
                                   ctx->taglen))
            return 0;
        ctx->iv_state = IV_STATE_COPIED;
    }
    return 1;
}
