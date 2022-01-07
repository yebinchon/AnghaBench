
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsdisp_t ;
typedef char WCHAR ;
typedef int HRESULT ;


 int ActiveXObject_value ;
 scalar_t__ FAILED (int ) ;
 int PROPF_CONSTR ;
 int create_builtin_function (int *,int ,char const*,int *,int,int *,int **) ;
 int create_object (int *,int *,int **) ;
 int jsdisp_release (int *) ;

HRESULT create_activex_constr(script_ctx_t *ctx, jsdisp_t **ret)
{
    jsdisp_t *prototype;
    HRESULT hres;

    static const WCHAR ActiveXObjectW[] = {'A','c','t','i','v','e','X','O','b','j','e','c','t',0};

    hres = create_object(ctx, ((void*)0), &prototype);
    if(FAILED(hres))
        return hres;

    hres = create_builtin_function(ctx, ActiveXObject_value, ActiveXObjectW, ((void*)0),
            PROPF_CONSTR|1, prototype, ret);

    jsdisp_release(prototype);
    return hres;
}
