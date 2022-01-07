
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ivlen; int iv_gen_rand; int iv_state; scalar_t__ iv; int libctx; } ;
typedef TYPE_1__ PROV_GCM_CTX ;


 int GCM_IV_DEFAULT_SIZE ;
 int IV_STATE_BUFFERED ;
 scalar_t__ rand_bytes_ex (int ,scalar_t__,int) ;

__attribute__((used)) static int gcm_iv_generate(PROV_GCM_CTX *ctx, int offset)
{
    int sz = ctx->ivlen - offset;


    if (sz <= 0 || ctx->ivlen < GCM_IV_DEFAULT_SIZE)
        return 0;


    if (rand_bytes_ex(ctx->libctx, ctx->iv + offset, sz) <= 0)
        return 0;
    ctx->iv_state = IV_STATE_BUFFERED;
    ctx->iv_gen_rand = 1;
    return 1;
}
