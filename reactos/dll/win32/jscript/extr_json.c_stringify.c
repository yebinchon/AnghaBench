
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ctx; } ;
typedef TYPE_1__ stringify_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
typedef int WCHAR ;
typedef scalar_t__ HRESULT ;
typedef int DISPID ;


 scalar_t__ E_NOTIMPL ;
 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ FAILED (scalar_t__) ;
 int FIXME (char*) ;
 int JSCLASS_ARRAY ;







 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int append_string (TYPE_1__*,int ) ;
 int append_string_len (TYPE_1__*,int const*,int ) ;
 int assert (int ) ;
 scalar_t__ double_to_string (double,int **) ;
 int falseW ;
 int get_bool (int ) ;
 double get_number (int ) ;
 scalar_t__ get_object (int ) ;
 int * get_string (int ) ;
 int * iface_to_jsdisp (scalar_t__) ;
 int is_callable (int *) ;
 int is_class (int *,int ) ;
 int is_finite (double) ;
 scalar_t__ is_object_instance (int ) ;
 scalar_t__ jsdisp_get_id (int *,int ,int ,int *) ;
 int jsdisp_release (int *) ;
 scalar_t__ json_quote (TYPE_1__*,int const*,int ) ;
 int * jsstr_flatten (int *) ;
 int jsstr_length (int *) ;
 int jsstr_release (int *) ;
 int jsval_release (int ) ;
 int jsval_type (int ) ;
 scalar_t__ maybe_to_primitive (int ,int ,int *) ;
 int nullW ;
 scalar_t__ stringify_array (TYPE_1__*,int *) ;
 scalar_t__ stringify_object (TYPE_1__*,int *) ;
 int toJSONW ;
 int trueW ;

__attribute__((used)) static HRESULT stringify(stringify_ctx_t *ctx, jsval_t val)
{
    jsval_t value;
    HRESULT hres;

    if(is_object_instance(val) && get_object(val)) {
        jsdisp_t *obj;
        DISPID id;

        obj = iface_to_jsdisp(get_object(val));
        if(!obj)
            return S_FALSE;

        hres = jsdisp_get_id(obj, toJSONW, 0, &id);
        jsdisp_release(obj);
        if(hres == S_OK)
            FIXME("Use toJSON.\n");
    }



    hres = maybe_to_primitive(ctx->ctx, val, &value);
    if(FAILED(hres))
        return hres;

    switch(jsval_type(value)) {
    case 133:
        if(!append_string(ctx, nullW))
            hres = E_OUTOFMEMORY;
        break;
    case 134:
        if(!append_string(ctx, get_bool(value) ? trueW : falseW))
            hres = E_OUTOFMEMORY;
        break;
    case 130: {
        jsstr_t *str = get_string(value);
        const WCHAR *ptr = jsstr_flatten(str);
        if(ptr)
            hres = json_quote(ctx, ptr, jsstr_length(str));
        else
            hres = E_OUTOFMEMORY;
        break;
    }
    case 132: {
        double n = get_number(value);
        if(is_finite(n)) {
            const WCHAR *ptr;
            jsstr_t *str;


            hres = double_to_string(n, &str);
            if(FAILED(hres))
                break;

            ptr = jsstr_flatten(str);
            assert(ptr != ((void*)0));
            hres = ptr && !append_string_len(ctx, ptr, jsstr_length(str)) ? E_OUTOFMEMORY : S_OK;
            jsstr_release(str);
        }else {
            if(!append_string(ctx, nullW))
                hres = E_OUTOFMEMORY;
        }
        break;
    }
    case 131: {
        jsdisp_t *obj;

        obj = iface_to_jsdisp(get_object(value));
        if(!obj) {
            hres = S_FALSE;
            break;
        }

        if(!is_callable(obj))
            hres = is_class(obj, JSCLASS_ARRAY) ? stringify_array(ctx, obj) : stringify_object(ctx, obj);
        else
            hres = S_FALSE;

        jsdisp_release(obj);
        break;
    }
    case 129:
        hres = S_FALSE;
        break;
    case 128:
        FIXME("VARIANT\n");
        hres = E_NOTIMPL;
        break;
    }

    jsval_release(value);
    return hres;
}
