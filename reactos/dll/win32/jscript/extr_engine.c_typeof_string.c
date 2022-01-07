
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsval_t ;
typedef int jsdisp_t ;
typedef int WCHAR ;
typedef int HRESULT ;


 int E_NOTIMPL ;
 int FIXME (char*,int ) ;
 int JSCLASS_FUNCTION ;







 int S_OK ;
 int * booleanW ;
 int debugstr_variant (int ) ;
 int * functionW ;
 int get_object (int ) ;
 int get_variant (int ) ;
 int * iface_to_jsdisp (int ) ;
 int is_class (int *,int ) ;
 int jsdisp_release (int *) ;
 int jsval_type (int ) ;
 int * numberW ;
 int * objectW ;
 int * stringW ;
 int * undefinedW ;

__attribute__((used)) static HRESULT typeof_string(jsval_t v, const WCHAR **ret)
{
    switch(jsval_type(v)) {
    case 129:
        *ret = undefinedW;
        break;
    case 133:
        *ret = objectW;
        break;
    case 131: {
        jsdisp_t *dispex;

        if(get_object(v) && (dispex = iface_to_jsdisp(get_object(v)))) {
            *ret = is_class(dispex, JSCLASS_FUNCTION) ? functionW : objectW;
            jsdisp_release(dispex);
        }else {
            *ret = objectW;
        }
        break;
    }
    case 130:
        *ret = stringW;
        break;
    case 132:
        *ret = numberW;
        break;
    case 134:
        *ret = booleanW;
        break;
    case 128:
        FIXME("unhandled variant %s\n", debugstr_variant(get_variant(v)));
        return E_NOTIMPL;
    }

    return S_OK;
}
