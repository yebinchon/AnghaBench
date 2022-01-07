
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vdisp_t ;
typedef int script_ctx_t ;
struct TYPE_4__ {int flags; int value; int * setter; int * getter; scalar_t__ explicit_setter; scalar_t__ explicit_getter; } ;
typedef TYPE_1__ property_desc_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
typedef int WORD ;
typedef int WCHAR ;
typedef scalar_t__ HRESULT ;


 scalar_t__ DISP_E_UNKNOWNNAME ;
 scalar_t__ E_NOTIMPL ;
 scalar_t__ FAILED (scalar_t__) ;
 int FALSE ;
 int FIXME (char*) ;
 int JS_E_OBJECT_EXPECTED ;
 int PROPF_ALL ;
 int PROPF_CONFIGURABLE ;
 int PROPF_ENUMERABLE ;
 int PROPF_WRITABLE ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int TRACE (char*) ;
 int configurableW ;
 scalar_t__ create_object (int *,int *,int **) ;
 int enumerableW ;
 int getW ;
 int get_object (int ) ;
 int is_object_instance (int ) ;
 scalar_t__ jsdisp_define_data_property (int *,int ,int ,int ) ;
 scalar_t__ jsdisp_get_own_property (int *,int const*,int ,TYPE_1__*) ;
 scalar_t__ jsdisp_propput_name (int *,int ,int ) ;
 int jsdisp_release (int *) ;
 int jsstr_release (int *) ;
 int jsval_bool (int) ;
 int jsval_obj (int *) ;
 int jsval_undefined () ;
 int release_property_descriptor (TYPE_1__*) ;
 int setW ;
 scalar_t__ throw_type_error (int *,int ,int *) ;
 scalar_t__ to_flat_string (int *,int ,int **,int const**) ;
 int * to_jsdisp (int ) ;
 int valueW ;
 int writableW ;

__attribute__((used)) static HRESULT Object_getOwnPropertyDescriptor(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags,
                                               unsigned argc, jsval_t *argv, jsval_t *r)
{
    property_desc_t prop_desc;
    jsdisp_t *obj, *desc_obj;
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

    hres = jsdisp_get_own_property(obj, name, FALSE, &prop_desc);
    jsstr_release(name_str);
    if(hres == DISP_E_UNKNOWNNAME) {
        if(r) *r = jsval_undefined();
        return S_OK;
    }
    if(FAILED(hres))
        return hres;

    hres = create_object(ctx, ((void*)0), &desc_obj);
    if(FAILED(hres))
        return hres;

    if(prop_desc.explicit_getter || prop_desc.explicit_setter) {
        hres = jsdisp_define_data_property(desc_obj, getW, PROPF_ALL,
                prop_desc.getter ? jsval_obj(prop_desc.getter) : jsval_undefined());
        if(SUCCEEDED(hres))
            hres = jsdisp_define_data_property(desc_obj, setW, PROPF_ALL,
                    prop_desc.setter ? jsval_obj(prop_desc.setter) : jsval_undefined());
    }else {
        hres = jsdisp_propput_name(desc_obj, valueW, prop_desc.value);
        if(SUCCEEDED(hres))
            hres = jsdisp_define_data_property(desc_obj, writableW, PROPF_ALL,
                    jsval_bool(!!(prop_desc.flags & PROPF_WRITABLE)));
    }
    if(SUCCEEDED(hres))
        hres = jsdisp_define_data_property(desc_obj, enumerableW, PROPF_ALL,
                jsval_bool(!!(prop_desc.flags & PROPF_ENUMERABLE)));
    if(SUCCEEDED(hres))
        hres = jsdisp_define_data_property(desc_obj, configurableW, PROPF_ALL,
                jsval_bool(!!(prop_desc.flags & PROPF_CONFIGURABLE)));

    release_property_descriptor(&prop_desc);
    if(SUCCEEDED(hres) && r)
        *r = jsval_obj(desc_obj);
    else
        jsdisp_release(desc_obj);
    return hres;
}
