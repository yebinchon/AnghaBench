
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsdisp_t ;
typedef int builtin_invoke_t ;
typedef int builtin_info_t ;
typedef int WCHAR ;
struct TYPE_3__ {int dispex; int length; } ;
struct TYPE_4__ {TYPE_1__ function; int const* name; int proc; } ;
typedef TYPE_2__ NativeFunction ;
typedef int HRESULT ;
typedef int DWORD ;


 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int NativeFunctionVtbl ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int create_function (int *,int const*,int *,int,int ,int ,int *,void**) ;
 int jsdisp_define_data_property (int *,int ,int ,int ) ;
 int jsdisp_release (int *) ;
 int jsval_number (int ) ;
 int jsval_obj (int *) ;
 int lengthW ;
 int prototypeW ;

HRESULT create_builtin_function(script_ctx_t *ctx, builtin_invoke_t value_proc, const WCHAR *name,
        const builtin_info_t *builtin_info, DWORD flags, jsdisp_t *prototype, jsdisp_t **ret)
{
    NativeFunction *function;
    HRESULT hres;

    hres = create_function(ctx, builtin_info, &NativeFunctionVtbl, sizeof(NativeFunction), flags, FALSE, ((void*)0), (void**)&function);
    if(FAILED(hres))
        return hres;

    if(builtin_info)
        hres = jsdisp_define_data_property(&function->function.dispex, lengthW, 0,
                                           jsval_number(function->function.length));
    if(SUCCEEDED(hres))
        hres = jsdisp_define_data_property(&function->function.dispex, prototypeW, 0, jsval_obj(prototype));
    if(FAILED(hres)) {
        jsdisp_release(&function->function.dispex);
        return hres;
    }

    function->proc = value_proc;
    function->name = name;

    *ret = &function->function.dispex;
    return S_OK;
}
