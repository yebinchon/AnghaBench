
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int property_desc_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
typedef int WORD ;
typedef int WCHAR ;
typedef int HRESULT ;


 int E_NOTIMPL ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*) ;
 int JS_E_OBJECT_EXPECTED ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*) ;
 int get_object (int ) ;
 scalar_t__ is_object_instance (int ) ;
 int jsdisp_addref (int *) ;
 int jsdisp_define_property (int *,int const*,int *) ;
 int jsstr_release (int *) ;
 int jsval_obj (int ) ;
 int jsval_undefined () ;
 int release_property_descriptor (int *) ;
 int throw_type_error (int *,int ,int *) ;
 int to_flat_string (int *,int ,int **,int const**) ;
 int * to_jsdisp (int ) ;
 int to_property_descriptor (int *,int *,int *) ;

__attribute__((used)) static HRESULT Object_defineProperty(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags,
                                     unsigned argc, jsval_t *argv, jsval_t *r)
{
    property_desc_t prop_desc;
    jsdisp_t *obj, *attr_obj;
    const WCHAR *name;
    jsstr_t *name_str;
    HRESULT hres;

    TRACE("\n");

    if(argc < 1 || !is_object_instance(argv[0]))
        return throw_type_error(ctx, JS_E_OBJECT_EXPECTED, ((void*)0));
    obj = to_jsdisp(get_object(argv[0]));
    if(!obj) {
        FIXME("not implemented non-JS object\n");
        return E_NOTIMPL;
    }

    hres = to_flat_string(ctx, argc >= 2 ? argv[1] : jsval_undefined(), &name_str, &name);
    if(FAILED(hres))
        return hres;

    if(argc >= 3 && is_object_instance(argv[2])) {
        attr_obj = to_jsdisp(get_object(argv[2]));
        if(attr_obj) {
            hres = to_property_descriptor(ctx, attr_obj, &prop_desc);
        }else {
            FIXME("not implemented non-JS object\n");
            hres = E_NOTIMPL;
        }
    }else {
        hres = throw_type_error(ctx, JS_E_OBJECT_EXPECTED, ((void*)0));
    }
    jsstr_release(name_str);
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_property(obj, name, &prop_desc);
    release_property_descriptor(&prop_desc);
    if(SUCCEEDED(hres) && r)
        *r = jsval_obj(jsdisp_addref(obj));
    return hres;
}
