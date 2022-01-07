
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
struct TYPE_6__ {TYPE_1__* vtbl; } ;
struct TYPE_5__ {int (* toString ) (TYPE_2__*,int **) ;} ;
typedef int HRESULT ;
typedef TYPE_2__ FunctionInstance ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 TYPE_2__* function_from_jsdisp (int *) ;
 int jsval_string (int *) ;
 int stub1 (TYPE_2__*,int **) ;

HRESULT Function_get_value(script_ctx_t *ctx, jsdisp_t *jsthis, jsval_t *r)
{
    FunctionInstance *function = function_from_jsdisp(jsthis);
    jsstr_t *str;
    HRESULT hres;

    TRACE("\n");

    hres = function->vtbl->toString(function, &str);
    if(FAILED(hres))
        return hres;

    *r = jsval_string(str);
    return S_OK;
}
