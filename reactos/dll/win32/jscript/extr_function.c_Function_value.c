
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int jsdisp; } ;
struct TYPE_11__ {TYPE_1__ u; } ;
typedef TYPE_3__ vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
struct TYPE_12__ {TYPE_2__* vtbl; } ;
struct TYPE_10__ {int (* call ) (int *,TYPE_4__*,int *,int ,unsigned int,int *,int *) ;} ;
typedef int HRESULT ;
typedef TYPE_4__ FunctionInstance ;


 int ERR (char*) ;
 int E_FAIL ;
 int JSCLASS_FUNCTION ;
 int TRACE (char*) ;
 TYPE_4__* function_from_jsdisp (int ) ;
 int is_vclass (TYPE_3__*,int ) ;
 int stub1 (int *,TYPE_4__*,int *,int ,unsigned int,int *,int *) ;

HRESULT Function_value(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    FunctionInstance *function;

    TRACE("\n");

    if(!is_vclass(jsthis, JSCLASS_FUNCTION)) {
        ERR("dispex is not a function\n");
        return E_FAIL;
    }

    function = function_from_jsdisp(jsthis->u.jsdisp);
    return function->vtbl->call(ctx, function, ((void*)0), flags, argc, argv, r);
}
