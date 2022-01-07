
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int acc; } ;
typedef TYPE_1__ script_ctx_t ;


 int jsval_release (int ) ;
 int jsval_undefined () ;

__attribute__((used)) static inline void clear_acc(script_ctx_t *ctx)
{
    jsval_release(ctx->acc);
    ctx->acc = jsval_undefined();
}
