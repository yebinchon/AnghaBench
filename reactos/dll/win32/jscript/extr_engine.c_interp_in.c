
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int WCHAR ;
typedef scalar_t__ HRESULT ;
typedef int DISPID ;
typedef int BOOL ;


 scalar_t__ DISP_E_UNKNOWNNAME ;
 scalar_t__ FAILED (scalar_t__) ;
 int FALSE ;
 int IDispatch_Release (int ) ;
 int JS_E_OBJECT_EXPECTED ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 int TRACE (char*) ;
 int TRUE ;
 scalar_t__ disp_get_id (int *,int ,int const*,int *,int ,int *) ;
 int get_object (int ) ;
 int is_object_instance (int ) ;
 int jsstr_release (int *) ;
 int jsval_bool (int ) ;
 int jsval_release (int ) ;
 int stack_pop (int *) ;
 scalar_t__ stack_push (int *,int ) ;
 scalar_t__ throw_type_error (int *,int ,int *) ;
 scalar_t__ to_flat_string (int *,int ,int **,int const**) ;

__attribute__((used)) static HRESULT interp_in(script_ctx_t *ctx)
{
    const WCHAR *str;
    jsstr_t *jsstr;
    jsval_t obj, v;
    DISPID id = 0;
    BOOL ret;
    HRESULT hres;

    TRACE("\n");

    obj = stack_pop(ctx);
    if(!is_object_instance(obj) || !get_object(obj)) {
        jsval_release(obj);
        return throw_type_error(ctx, JS_E_OBJECT_EXPECTED, ((void*)0));
    }

    v = stack_pop(ctx);
    hres = to_flat_string(ctx, v, &jsstr, &str);
    jsval_release(v);
    if(FAILED(hres)) {
        IDispatch_Release(get_object(obj));
        return hres;
    }

    hres = disp_get_id(ctx, get_object(obj), str, ((void*)0), 0, &id);
    IDispatch_Release(get_object(obj));
    jsstr_release(jsstr);
    if(SUCCEEDED(hres))
        ret = TRUE;
    else if(hres == DISP_E_UNKNOWNNAME)
        ret = FALSE;
    else
        return hres;

    return stack_push(ctx, jsval_bool(ret));
}
