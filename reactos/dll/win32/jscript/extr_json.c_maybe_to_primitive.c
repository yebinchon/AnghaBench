
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
typedef int HRESULT ;


 int JSCLASS_BOOLEAN ;
 int JSCLASS_NUMBER ;
 int JSCLASS_STRING ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int bool_obj_value (int *) ;
 int get_object (int ) ;
 int * iface_to_jsdisp (int ) ;
 scalar_t__ is_class (int *,int ) ;
 int is_object_instance (int ) ;
 int jsdisp_release (int *) ;
 int jsval_bool (int ) ;
 int jsval_copy (int ,int *) ;
 int jsval_number (double) ;
 int jsval_obj (int *) ;
 int jsval_string (int *) ;
 int to_number (int *,int ,double*) ;
 int to_string (int *,int ,int **) ;

__attribute__((used)) static HRESULT maybe_to_primitive(script_ctx_t *ctx, jsval_t val, jsval_t *r)
{
    jsdisp_t *obj;
    HRESULT hres;

    if(!is_object_instance(val) || !get_object(val) || !(obj = iface_to_jsdisp(get_object(val))))
        return jsval_copy(val, r);

    if(is_class(obj, JSCLASS_NUMBER)) {
        double n;
        hres = to_number(ctx, val, &n);
        jsdisp_release(obj);
        if(SUCCEEDED(hres))
            *r = jsval_number(n);
        return hres;
    }

    if(is_class(obj, JSCLASS_STRING)) {
        jsstr_t *str;
        hres = to_string(ctx, val, &str);
        jsdisp_release(obj);
        if(SUCCEEDED(hres))
            *r = jsval_string(str);
        return hres;
    }

    if(is_class(obj, JSCLASS_BOOLEAN)) {
        *r = jsval_bool(bool_obj_value(obj));
        jsdisp_release(obj);
        return S_OK;
    }

    *r = jsval_obj(obj);
    return S_OK;
}
