
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* call_ctx; } ;
typedef TYPE_2__ script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
struct TYPE_7__ {int scope; } ;
typedef int HRESULT ;
typedef int BSTR ;


 scalar_t__ FAILED (int ) ;
 scalar_t__ SUCCEEDED (int ) ;
 int create_dispex (TYPE_2__*,int *,int *,int **) ;
 int get_op_bstr (TYPE_2__*,int ) ;
 int jsdisp_propput_name (int *,int const,int ) ;
 int jsdisp_release (int *) ;
 int jsval_release (int ) ;
 int scope_push (int ,int *,int ,int *) ;
 int stack_pop (TYPE_2__*) ;
 int to_disp (int *) ;

__attribute__((used)) static HRESULT interp_enter_catch(script_ctx_t *ctx)
{
    const BSTR ident = get_op_bstr(ctx, 0);
    jsdisp_t *scope_obj;
    jsval_t v;
    HRESULT hres;

    hres = create_dispex(ctx, ((void*)0), ((void*)0), &scope_obj);
    if(FAILED(hres))
        return hres;

    v = stack_pop(ctx);
    hres = jsdisp_propput_name(scope_obj, ident, v);
    jsval_release(v);
    if(SUCCEEDED(hres))
        hres = scope_push(ctx->call_ctx->scope, scope_obj, to_disp(scope_obj), &ctx->call_ctx->scope);
    jsdisp_release(scope_obj);
    return hres;
}
