
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int scope_chain_t ;
typedef int jsdisp_t ;
struct TYPE_6__ {int param_cnt; } ;
typedef TYPE_2__ function_code_t ;
typedef int bytecode_t ;
struct TYPE_5__ {int dispex; int length; } ;
struct TYPE_7__ {TYPE_1__ function; TYPE_2__* func_code; int * code; int * scope_chain; } ;
typedef TYPE_3__ InterpretedFunction ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int InterpretedFunctionVtbl ;
 int PROPF_CONSTR ;
 int PROPF_WRITABLE ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int bytecode_addref (int *) ;
 int create_function (int *,int *,int *,int,int ,int ,int *,void**) ;
 int create_object (int *,int *,int **) ;
 int jsdisp_define_data_property (int *,int ,int ,int ) ;
 int jsdisp_release (int *) ;
 int jsval_obj (int *) ;
 int prototypeW ;
 int scope_addref (int *) ;
 int set_constructor_prop (int *,int *,int *) ;

HRESULT create_source_function(script_ctx_t *ctx, bytecode_t *code, function_code_t *func_code,
        scope_chain_t *scope_chain, jsdisp_t **ret)
{
    InterpretedFunction *function;
    jsdisp_t *prototype;
    HRESULT hres;

    hres = create_object(ctx, ((void*)0), &prototype);
    if(FAILED(hres))
        return hres;

    hres = create_function(ctx, ((void*)0), &InterpretedFunctionVtbl, sizeof(InterpretedFunction), PROPF_CONSTR,
                           FALSE, ((void*)0), (void**)&function);
    if(SUCCEEDED(hres)) {
        hres = jsdisp_define_data_property(&function->function.dispex, prototypeW, PROPF_WRITABLE,
                                           jsval_obj(prototype));
        if(SUCCEEDED(hres))
            hres = set_constructor_prop(ctx, &function->function.dispex, prototype);
        if(FAILED(hres))
            jsdisp_release(&function->function.dispex);
    }
    jsdisp_release(prototype);
    if(FAILED(hres))
        return hres;

    if(scope_chain) {
        scope_addref(scope_chain);
        function->scope_chain = scope_chain;
    }

    bytecode_addref(code);
    function->code = code;
    function->func_code = func_code;
    function->function.length = function->func_code->param_cnt;

    *ret = &function->function.dispex;
    return S_OK;
}
