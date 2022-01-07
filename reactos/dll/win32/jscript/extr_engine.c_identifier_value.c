
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsval_t ;
struct TYPE_5__ {int hres; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ u; } ;
typedef TYPE_2__ exprval_t ;
typedef int HRESULT ;
typedef int BSTR ;


 scalar_t__ EXPRVAL_INVALID ;
 scalar_t__ FAILED (int ) ;
 int exprval_to_value (int *,TYPE_2__*,int *) ;
 int identifier_eval (int *,int ,TYPE_2__*) ;
 int stack_push (int *,int ) ;
 int throw_type_error (int *,int ,int ) ;

__attribute__((used)) static HRESULT identifier_value(script_ctx_t *ctx, BSTR identifier)
{
    exprval_t exprval;
    jsval_t v;
    HRESULT hres;

    hres = identifier_eval(ctx, identifier, &exprval);
    if(FAILED(hres))
        return hres;

    if(exprval.type == EXPRVAL_INVALID)
        return throw_type_error(ctx, exprval.u.hres, identifier);

    hres = exprval_to_value(ctx, &exprval, &v);
    if(FAILED(hres))
        return hres;

    return stack_push(ctx, v);
}
