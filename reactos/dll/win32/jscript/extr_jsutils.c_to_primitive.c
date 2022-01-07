
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
typedef scalar_t__ hint_t ;
typedef char WCHAR ;
typedef int HRESULT ;
typedef int DISPID ;


 int DISPATCH_METHOD ;
 int DISPID_VALUE ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ HINT_NUMBER ;
 scalar_t__ HINT_STRING ;
 int IDispatch_Release (int ) ;
 int JSCLASS_DATE ;
 int JS_E_TO_PRIMITIVE ;
 scalar_t__ NO_HINT ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int WARN (char*) ;
 int disp_propget (int *,int ,int ,int *) ;
 int get_object (int ) ;
 int * iface_to_jsdisp (int ) ;
 scalar_t__ is_class (int *,int ) ;
 scalar_t__ is_object_instance (int ) ;
 int jsdisp_call (int *,int ,int ,int ,int *,int *) ;
 int jsdisp_get_id (int *,char const*,int ,int *) ;
 int jsdisp_release (int *) ;
 int jsval_copy (int ,int *) ;
 int jsval_null () ;
 int throw_type_error (int *,int ,int *) ;

HRESULT to_primitive(script_ctx_t *ctx, jsval_t val, jsval_t *ret, hint_t hint)
{
    if(is_object_instance(val)) {
        jsdisp_t *jsdisp;
        jsval_t prim;
        DISPID id;
        HRESULT hres;

        static const WCHAR toStringW[] = {'t','o','S','t','r','i','n','g',0};
        static const WCHAR valueOfW[] = {'v','a','l','u','e','O','f',0};

        if(!get_object(val)) {
            *ret = jsval_null();
            return S_OK;
        }

        jsdisp = iface_to_jsdisp(get_object(val));
        if(!jsdisp)
            return disp_propget(ctx, get_object(val), DISPID_VALUE, ret);

        if(hint == NO_HINT)
            hint = is_class(jsdisp, JSCLASS_DATE) ? HINT_STRING : HINT_NUMBER;



        hres = jsdisp_get_id(jsdisp, hint == HINT_STRING ? toStringW : valueOfW, 0, &id);
        if(SUCCEEDED(hres)) {
            hres = jsdisp_call(jsdisp, id, DISPATCH_METHOD, 0, ((void*)0), &prim);
            if(FAILED(hres)) {
                WARN("call error - forwarding exception\n");
                jsdisp_release(jsdisp);
                return hres;
            }else if(!is_object_instance(prim)) {
                jsdisp_release(jsdisp);
                *ret = prim;
                return S_OK;
            }else {
                IDispatch_Release(get_object(prim));
            }
        }

        hres = jsdisp_get_id(jsdisp, hint == HINT_STRING ? valueOfW : toStringW, 0, &id);
        if(SUCCEEDED(hres)) {
            hres = jsdisp_call(jsdisp, id, DISPATCH_METHOD, 0, ((void*)0), &prim);
            if(FAILED(hres)) {
                WARN("call error - forwarding exception\n");
                jsdisp_release(jsdisp);
                return hres;
            }else if(!is_object_instance(prim)) {
                jsdisp_release(jsdisp);
                *ret = prim;
                return S_OK;
            }else {
                IDispatch_Release(get_object(prim));
            }
        }

        jsdisp_release(jsdisp);

        WARN("failed\n");
        return throw_type_error(ctx, JS_E_TO_PRIMITIVE, ((void*)0));
    }

    return jsval_copy(val, ret);

}
