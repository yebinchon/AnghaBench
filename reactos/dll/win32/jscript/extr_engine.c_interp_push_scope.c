
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* call_ctx; } ;
typedef TYPE_2__ script_ctx_t ;
typedef int jsval_t ;
struct TYPE_6__ {int scope; } ;
typedef int IDispatch ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IDispatch_Release (int *) ;
 int TRACE (char*) ;
 int jsval_release (int ) ;
 int scope_push (int ,int ,int *,int *) ;
 int stack_pop (TYPE_2__*) ;
 int to_jsdisp (int *) ;
 int to_object (TYPE_2__*,int ,int **) ;

__attribute__((used)) static HRESULT interp_push_scope(script_ctx_t *ctx)
{
    IDispatch *disp;
    jsval_t v;
    HRESULT hres;

    TRACE("\n");

    v = stack_pop(ctx);
    hres = to_object(ctx, v, &disp);
    jsval_release(v);
    if(FAILED(hres))
        return hres;

    hres = scope_push(ctx->call_ctx->scope, to_jsdisp(disp), disp, &ctx->call_ctx->scope);
    IDispatch_Release(disp);
    return hres;
}
