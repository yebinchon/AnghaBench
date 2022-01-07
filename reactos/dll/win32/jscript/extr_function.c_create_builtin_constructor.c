
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsdisp_t ;
typedef int builtin_invoke_t ;
typedef int builtin_info_t ;
typedef int WCHAR ;
typedef int HRESULT ;
typedef int DWORD ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int create_builtin_function (int *,int ,int const*,int const*,int ,int *,int **) ;
 int jsdisp_release (int *) ;
 int set_constructor_prop (int *,int *,int *) ;

HRESULT create_builtin_constructor(script_ctx_t *ctx, builtin_invoke_t value_proc, const WCHAR *name,
        const builtin_info_t *builtin_info, DWORD flags, jsdisp_t *prototype, jsdisp_t **ret)
{
    jsdisp_t *constr;
    HRESULT hres;

    hres = create_builtin_function(ctx, value_proc, name, builtin_info, flags, prototype, &constr);
    if(FAILED(hres))
        return hres;

    hres = set_constructor_prop(ctx, constr, prototype);
    if(FAILED(hres)) {
        jsdisp_release(constr);
        return hres;
    }

    *ret = constr;
    return S_OK;
}
