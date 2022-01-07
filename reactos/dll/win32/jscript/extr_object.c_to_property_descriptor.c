
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int script_ctx_t ;
struct TYPE_5__ {int mask; int flags; void* explicit_value; void* explicit_setter; void* explicit_getter; void* setter; void* getter; int value; } ;
typedef TYPE_1__ property_desc_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
typedef scalar_t__ HRESULT ;
typedef int DISPID ;
typedef int BOOL ;


 scalar_t__ DISP_E_UNKNOWNNAME ;
 scalar_t__ E_FAIL ;
 scalar_t__ FAILED (scalar_t__) ;
 int FIXME (char*) ;
 int JS_E_INVALID_WRITABLE_PROP_DESC ;
 int JS_E_PROP_DESC_MISMATCH ;
 int PROPF_CONFIGURABLE ;
 int PROPF_ENUMERABLE ;
 int PROPF_WRITABLE ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 void* TRUE ;
 int configurableW ;
 int enumerableW ;
 int getW ;
 int get_object (int ) ;
 int is_object_instance (int ) ;
 int is_undefined (int ) ;
 scalar_t__ jsdisp_get_id (int *,int ,int ,int *) ;
 scalar_t__ jsdisp_propget (int *,int ,int *) ;
 int jsval_release (int ) ;
 int jsval_undefined () ;
 int memset (TYPE_1__*,int ,int) ;
 int release_property_descriptor (TYPE_1__*) ;
 int setW ;
 scalar_t__ throw_type_error (int *,int ,int *) ;
 scalar_t__ to_boolean (int ,int *) ;
 void* to_jsdisp (int ) ;
 int valueW ;
 int writableW ;

__attribute__((used)) static HRESULT to_property_descriptor(script_ctx_t *ctx, jsdisp_t *attr_obj, property_desc_t *desc)
{
    DISPID id;
    jsval_t v;
    BOOL b;
    HRESULT hres;

    memset(desc, 0, sizeof(*desc));
    desc->value = jsval_undefined();

    hres = jsdisp_get_id(attr_obj, enumerableW, 0, &id);
    if(SUCCEEDED(hres)) {
        desc->mask |= PROPF_ENUMERABLE;
        hres = jsdisp_propget(attr_obj, id, &v);
        if(FAILED(hres))
            return hres;
        hres = to_boolean(v, &b);
        jsval_release(v);
        if(FAILED(hres))
            return hres;
        if(b)
            desc->flags |= PROPF_ENUMERABLE;
    }else if(hres != DISP_E_UNKNOWNNAME) {
        return hres;
    }

    hres = jsdisp_get_id(attr_obj, configurableW, 0, &id);
    if(SUCCEEDED(hres)) {
        desc->mask |= PROPF_CONFIGURABLE;
        hres = jsdisp_propget(attr_obj, id, &v);
        if(FAILED(hres))
            return hres;
        hres = to_boolean(v, &b);
        jsval_release(v);
        if(FAILED(hres))
            return hres;
        if(b)
            desc->flags |= PROPF_CONFIGURABLE;
    }else if(hres != DISP_E_UNKNOWNNAME) {
        return hres;
    }

    hres = jsdisp_get_id(attr_obj, valueW, 0, &id);
    if(SUCCEEDED(hres)) {
        hres = jsdisp_propget(attr_obj, id, &desc->value);
        if(FAILED(hres))
            return hres;
        desc->explicit_value = TRUE;
    }else if(hres != DISP_E_UNKNOWNNAME) {
        return hres;
    }

    hres = jsdisp_get_id(attr_obj, writableW, 0, &id);
    if(SUCCEEDED(hres)) {
        desc->mask |= PROPF_WRITABLE;
        hres = jsdisp_propget(attr_obj, id, &v);
        if(SUCCEEDED(hres)) {
            hres = to_boolean(v, &b);
            jsval_release(v);
            if(SUCCEEDED(hres) && b)
                desc->flags |= PROPF_WRITABLE;
        }
    }else if(hres == DISP_E_UNKNOWNNAME) {
        hres = S_OK;
    }
    if(FAILED(hres)) {
        release_property_descriptor(desc);
        return hres;
    }

    hres = jsdisp_get_id(attr_obj, getW, 0, &id);
    if(SUCCEEDED(hres)) {
        desc->explicit_getter = TRUE;
        hres = jsdisp_propget(attr_obj, id, &v);
        if(SUCCEEDED(hres) && !is_undefined(v)) {
            if(!is_object_instance(v)) {
                FIXME("getter is not an object\n");
                jsval_release(v);
                hres = E_FAIL;
            }else {

                desc->getter = to_jsdisp(get_object(v));
                if(!desc->getter)
                    FIXME("getter is not JS object\n");
            }
        }
    }else if(hres == DISP_E_UNKNOWNNAME) {
        hres = S_OK;
    }
    if(FAILED(hres)) {
        release_property_descriptor(desc);
        return hres;
    }

    hres = jsdisp_get_id(attr_obj, setW, 0, &id);
    if(SUCCEEDED(hres)) {
        desc->explicit_setter = TRUE;
        hres = jsdisp_propget(attr_obj, id, &v);
        if(SUCCEEDED(hres) && !is_undefined(v)) {
            if(!is_object_instance(v)) {
                FIXME("setter is not an object\n");
                jsval_release(v);
                hres = E_FAIL;
            }else {

                desc->setter = to_jsdisp(get_object(v));
                if(!desc->setter)
                    FIXME("setter is not JS object\n");
            }
        }
    }else if(hres == DISP_E_UNKNOWNNAME) {
        hres = S_OK;
    }
    if(FAILED(hres)) {
        release_property_descriptor(desc);
        return hres;
    }

    if(desc->explicit_getter || desc->explicit_setter) {
        if(desc->explicit_value)
            hres = throw_type_error(ctx, JS_E_PROP_DESC_MISMATCH, ((void*)0));
        else if(desc->mask & PROPF_WRITABLE)
            hres = throw_type_error(ctx, JS_E_INVALID_WRITABLE_PROP_DESC, ((void*)0));
    }

    if(FAILED(hres))
        release_property_descriptor(desc);
    return hres;
}
