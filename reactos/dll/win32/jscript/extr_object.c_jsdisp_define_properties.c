
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int property_desc_t ;
typedef int jsval_t ;
struct TYPE_9__ {int IDispatchEx_iface; } ;
typedef TYPE_1__ jsdisp_t ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef int DISPID ;
typedef int BSTR ;


 int DISPID_STARTENUM ;
 int E_NOTIMPL ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*) ;
 int IDispatchEx_GetMemberName (int *,int ,int *) ;
 int IDispatch_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRUE ;
 int * get_object (int ) ;
 int is_object_instance (int ) ;
 int jsdisp_define_property (TYPE_1__*,int ,int *) ;
 int jsdisp_next_prop (TYPE_1__*,int ,int ,int *) ;
 int jsdisp_propget (TYPE_1__*,int ,int *) ;
 int jsdisp_release (TYPE_1__*) ;
 int jsval_release (int ) ;
 int release_property_descriptor (int *) ;
 TYPE_1__* to_jsdisp (int *) ;
 int to_object (int *,int ,int **) ;
 int to_property_descriptor (int *,TYPE_1__*,int *) ;

__attribute__((used)) static HRESULT jsdisp_define_properties(script_ctx_t *ctx, jsdisp_t *obj, jsval_t list_val)
{
    DISPID id = DISPID_STARTENUM;
    property_desc_t prop_desc;
    IDispatch *list_disp;
    jsdisp_t *list_obj, *desc_obj;
    jsval_t desc_val;
    BSTR name;
    HRESULT hres;

    hres = to_object(ctx, list_val, &list_disp);
    if(FAILED(hres))
        return hres;

    if(!(list_obj = to_jsdisp(list_disp))) {
        FIXME("non-JS list obj\n");
        IDispatch_Release(list_disp);
        return E_NOTIMPL;
    }

    while(1) {
        hres = jsdisp_next_prop(list_obj, id, TRUE, &id);
        if(hres != S_OK)
            break;

        hres = jsdisp_propget(list_obj, id, &desc_val);
        if(FAILED(hres))
            break;

        if(!is_object_instance(desc_val) || !get_object(desc_val) || !(desc_obj = to_jsdisp(get_object(desc_val)))) {
            jsval_release(desc_val);
            break;
        }

        hres = to_property_descriptor(ctx, desc_obj, &prop_desc);
        jsdisp_release(desc_obj);
        if(FAILED(hres))
            break;

        hres = IDispatchEx_GetMemberName(&list_obj->IDispatchEx_iface, id, &name);
        if(SUCCEEDED(hres))
            hres = jsdisp_define_property(obj, name, &prop_desc);
        release_property_descriptor(&prop_desc);
        if(FAILED(hres))
            break;
    }

    jsdisp_release(list_obj);
    return FAILED(hres) ? hres : S_OK;
}
