
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsdisp_t ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef int DWORD ;


 int JSCLASS_ARRAY ;
 int array_from_jsdisp (int *) ;
 int concat_array (int *,int ,int *) ;
 int * iface_to_jsdisp (int *) ;
 scalar_t__ is_class (int *,int ) ;
 int jsdisp_propput_idx (int *,int ,int ) ;
 int jsdisp_release (int *) ;
 int jsval_disp (int *) ;

__attribute__((used)) static HRESULT concat_obj(jsdisp_t *array, IDispatch *obj, DWORD *len)
{
    jsdisp_t *jsobj;
    HRESULT hres;

    jsobj = iface_to_jsdisp(obj);
    if(jsobj) {
        if(is_class(jsobj, JSCLASS_ARRAY)) {
            hres = concat_array(array, array_from_jsdisp(jsobj), len);
            jsdisp_release(jsobj);
            return hres;
        }
        jsdisp_release(jsobj);
    }

    return jsdisp_propput_idx(array, (*len)++, jsval_disp(obj));
}
