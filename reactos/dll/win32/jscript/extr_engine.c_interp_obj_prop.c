
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int script_ctx_t ;
struct TYPE_3__ {int member_0; int * setter; void* explicit_setter; int * getter; void* explicit_getter; int flags; int mask; } ;
typedef TYPE_1__ property_desc_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
typedef int WCHAR ;
typedef int HRESULT ;


 unsigned int PROPERTY_DEFINITION_GETTER ;
 unsigned int PROPERTY_DEFINITION_VALUE ;
 int PROPF_CONFIGURABLE ;
 int PROPF_ENUMERABLE ;
 int TRACE (char*,int ) ;
 void* TRUE ;
 int * as_jsdisp (int ) ;
 int assert (int ) ;
 int debugstr_jsstr (int *) ;
 int get_object (int ) ;
 int * get_op_str (int *,int ) ;
 unsigned int get_op_uint (int *,int) ;
 int * iface_to_jsdisp (int ) ;
 int is_object_instance (int ) ;
 int jsdisp_define_property (int *,int const*,TYPE_1__*) ;
 int jsdisp_propput_name (int *,int const*,int ) ;
 int jsdisp_release (int *) ;
 int * jsstr_flatten (int *) ;
 int jsval_release (int ) ;
 int stack_pop (int *) ;
 int stack_top (int *) ;

__attribute__((used)) static HRESULT interp_obj_prop(script_ctx_t *ctx)
{
    jsstr_t *name_arg = get_op_str(ctx, 0);
    unsigned type = get_op_uint(ctx, 1);
    const WCHAR *name;
    jsdisp_t *obj;
    jsval_t val;
    HRESULT hres;

    TRACE("%s\n", debugstr_jsstr(name_arg));

    val = stack_pop(ctx);


    name = jsstr_flatten(name_arg);

    assert(is_object_instance(stack_top(ctx)));
    obj = as_jsdisp(get_object(stack_top(ctx)));

    if(type == PROPERTY_DEFINITION_VALUE) {
        hres = jsdisp_propput_name(obj, name, val);
    }else {
        property_desc_t desc = {PROPF_ENUMERABLE | PROPF_CONFIGURABLE};
        jsdisp_t *func;

        assert(is_object_instance(val));
        func = iface_to_jsdisp(get_object(val));

        desc.mask = desc.flags;
        if(type == PROPERTY_DEFINITION_GETTER) {
            desc.explicit_getter = TRUE;
            desc.getter = func;
        }else {
            desc.explicit_setter = TRUE;
            desc.setter = func;
        }

        hres = jsdisp_define_property(obj, name, &desc);
        jsdisp_release(func);
    }

    jsval_release(val);
    return hres;
}
