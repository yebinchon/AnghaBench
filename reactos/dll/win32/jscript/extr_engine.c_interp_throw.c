
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int val; } ;
struct TYPE_6__ {TYPE_1__ ei; } ;
typedef TYPE_2__ script_ctx_t ;
typedef int HRESULT ;


 int DISP_E_EXCEPTION ;
 int TRACE (char*) ;
 int jsval_release (int ) ;
 int stack_pop (TYPE_2__*) ;

__attribute__((used)) static HRESULT interp_throw(script_ctx_t *ctx)
{
    TRACE("\n");

    jsval_release(ctx->ei.val);
    ctx->ei.val = stack_pop(ctx);
    return DISP_E_EXCEPTION;
}
