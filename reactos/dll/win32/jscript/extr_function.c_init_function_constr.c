
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * function_constr; } ;
typedef TYPE_2__ script_ctx_t ;
typedef int jsdisp_t ;
typedef float WCHAR ;
struct TYPE_7__ {int dispex; } ;
struct TYPE_9__ {float const* name; TYPE_1__ function; int proc; } ;
typedef TYPE_3__ NativeFunction ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int FunctionConstr_value ;
 int FunctionInst_info ;
 int FunctionProt_value ;
 int Function_info ;
 int NativeFunctionVtbl ;
 int PROPF_CONSTR ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRUE ;
 int create_function (TYPE_2__*,int *,int *,int,int,int ,int *,void**) ;
 int jsdisp_define_data_property (int *,float const*,int ,int ) ;
 int jsdisp_release (int *) ;
 int jsval_obj (int *) ;
 float const* prototypeW ;
 int set_constructor_prop (TYPE_2__*,int *,int *) ;

HRESULT init_function_constr(script_ctx_t *ctx, jsdisp_t *object_prototype)
{
    NativeFunction *prot, *constr;
    HRESULT hres;

    static const WCHAR FunctionW[] = {'F','u','n','c','t','i','o','n',0};

    hres = create_function(ctx, &Function_info, &NativeFunctionVtbl, sizeof(NativeFunction), PROPF_CONSTR,
                           TRUE, object_prototype, (void**)&prot);
    if(FAILED(hres))
        return hres;

    prot->proc = FunctionProt_value;
    prot->name = prototypeW;

    hres = create_function(ctx, &FunctionInst_info, &NativeFunctionVtbl, sizeof(NativeFunction), PROPF_CONSTR|1,
                           TRUE, &prot->function.dispex, (void**)&constr);
    if(SUCCEEDED(hres)) {
        constr->proc = FunctionConstr_value;
        constr->name = FunctionW;
        hres = jsdisp_define_data_property(&constr->function.dispex, prototypeW, 0, jsval_obj(&prot->function.dispex));
        if(SUCCEEDED(hres))
            hres = set_constructor_prop(ctx, &constr->function.dispex, &prot->function.dispex);
        if(FAILED(hres))
            jsdisp_release(&constr->function.dispex);
    }
    jsdisp_release(&prot->function.dispex);
    if(FAILED(hres))
        return hres;

    ctx->function_constr = &constr->function.dispex;
    return S_OK;
}
