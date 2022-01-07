
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int val; int ei; } ;
struct TYPE_5__ {TYPE_1__ ei; } ;
typedef TYPE_2__ script_ctx_t ;


 int jsval_release (int ) ;
 int jsval_undefined () ;
 int memset (int *,int ,int) ;

void clear_ei(script_ctx_t *ctx)
{
    memset(&ctx->ei.ei, 0, sizeof(ctx->ei.ei));
    jsval_release(ctx->ei.val);
    ctx->ei.val = jsval_undefined();
}
