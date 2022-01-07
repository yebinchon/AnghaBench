
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsval_t ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ exprval_t ;
typedef int WCHAR ;
typedef int HRESULT ;
typedef int BSTR ;


 scalar_t__ EXPRVAL_INVALID ;
 scalar_t__ FAILED (int ) ;
 int TRACE (char*,int ) ;
 int debugstr_w (int const) ;
 int exprval_to_value (int *,TYPE_1__*,int *) ;
 int get_op_bstr (int *,int ) ;
 int identifier_eval (int *,int const,TYPE_1__*) ;
 int jsstr_undefined () ;
 int jsval_release (int ) ;
 int jsval_string (int ) ;
 int stack_push (int *,int ) ;
 int stack_push_string (int *,int const*) ;
 int typeof_string (int ,int const**) ;

__attribute__((used)) static HRESULT interp_typeofident(script_ctx_t *ctx)
{
    const BSTR arg = get_op_bstr(ctx, 0);
    exprval_t exprval;
    const WCHAR *ret;
    jsval_t v;
    HRESULT hres;

    TRACE("%s\n", debugstr_w(arg));

    hres = identifier_eval(ctx, arg, &exprval);
    if(FAILED(hres))
        return hres;

    if(exprval.type == EXPRVAL_INVALID)
        return stack_push(ctx, jsval_string(jsstr_undefined()));

    hres = exprval_to_value(ctx, &exprval, &v);
    if(FAILED(hres))
        return hres;

    hres = typeof_string(v, &ret);
    jsval_release(v);
    if(FAILED(hres))
        return hres;

    return stack_push_string(ctx, ret);
}
