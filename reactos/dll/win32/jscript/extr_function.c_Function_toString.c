
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int WORD ;
struct TYPE_6__ {TYPE_1__* vtbl; } ;
struct TYPE_5__ {int (* toString ) (TYPE_2__*,int **) ;} ;
typedef int HRESULT ;
typedef TYPE_2__ FunctionInstance ;


 scalar_t__ FAILED (int ) ;
 int JS_E_FUNCTION_EXPECTED ;
 int S_OK ;
 int TRACE (char*) ;
 TYPE_2__* function_this (int *) ;
 int jsstr_release (int *) ;
 int jsval_string (int *) ;
 int stub1 (TYPE_2__*,int **) ;
 int throw_type_error (int *,int ,int *) ;

__attribute__((used)) static HRESULT Function_toString(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    FunctionInstance *function;
    jsstr_t *str;
    HRESULT hres;

    TRACE("\n");

    if(!(function = function_this(jsthis)))
        return throw_type_error(ctx, JS_E_FUNCTION_EXPECTED, ((void*)0));

    hres = function->vtbl->toString(function, &str);
    if(FAILED(hres))
        return hres;

    if(r)
        *r = jsval_string(str);
    else
        jsstr_release(str);
    return S_OK;
}
