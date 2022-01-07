
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int IDispatch ;
typedef scalar_t__ HRESULT ;
typedef int DISPID ;
typedef int BSTR ;


 scalar_t__ DISP_E_UNKNOWNNAME ;
 scalar_t__ FAILED (scalar_t__) ;
 int IDispatch_Release (int *) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int TRACE (char*) ;
 scalar_t__ disp_get_id (int *,int *,int const,int const,int ,int *) ;
 scalar_t__ disp_propget (int *,int *,int ,int *) ;
 int get_op_bstr (int *,int ) ;
 int jsval_undefined () ;
 scalar_t__ stack_pop_object (int *,int **) ;
 scalar_t__ stack_push (int *,int ) ;

__attribute__((used)) static HRESULT interp_member(script_ctx_t *ctx)
{
    const BSTR arg = get_op_bstr(ctx, 0);
    IDispatch *obj;
    jsval_t v;
    DISPID id;
    HRESULT hres;

    TRACE("\n");

    hres = stack_pop_object(ctx, &obj);
    if(FAILED(hres))
        return hres;

    hres = disp_get_id(ctx, obj, arg, arg, 0, &id);
    if(SUCCEEDED(hres)) {
        hres = disp_propget(ctx, obj, id, &v);
    }else if(hres == DISP_E_UNKNOWNNAME) {
        v = jsval_undefined();
        hres = S_OK;
    }
    IDispatch_Release(obj);
    if(FAILED(hres))
        return hres;

    return stack_push(ctx, v);
}
