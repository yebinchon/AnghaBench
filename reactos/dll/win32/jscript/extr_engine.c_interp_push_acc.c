
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int acc; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int HRESULT ;


 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*) ;
 int jsval_undefined () ;
 int stack_push (TYPE_1__*,int ) ;

__attribute__((used)) static HRESULT interp_push_acc(script_ctx_t *ctx)
{
    HRESULT hres;

    TRACE("\n");

    hres = stack_push(ctx, ctx->acc);
    if(SUCCEEDED(hres))
        ctx->acc = jsval_undefined();
    return hres;
}
