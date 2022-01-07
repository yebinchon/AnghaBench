
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
typedef int WORD ;
typedef int IDispatch ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DWORD ;


 int DISPATCH_METHOD ;
 scalar_t__ DISP_E_UNKNOWNNAME ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ E_NOTIMPL ;
 scalar_t__ FAILED (scalar_t__) ;
 int FIXME (char*,...) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 int TRACE (char*) ;
 scalar_t__ create_array (int *,scalar_t__,int **) ;
 int debugstr_jsval (int ) ;
 scalar_t__ disp_call_value (int *,int *,int *,int ,int,int *,int *) ;
 scalar_t__ get_length (int *,int *,int **,scalar_t__*) ;
 int * get_object (int ) ;
 scalar_t__ is_object_instance (int ) ;
 int is_undefined (int ) ;
 scalar_t__ jsdisp_get_idx (int *,scalar_t__,int *) ;
 scalar_t__ jsdisp_propput_idx (int *,scalar_t__,int ) ;
 int jsdisp_release (int *) ;
 int jsval_number (scalar_t__) ;
 int jsval_obj (int *) ;
 int jsval_release (int ) ;
 int jsval_undefined () ;

__attribute__((used)) static HRESULT Array_map(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv, jsval_t *r)
{
    IDispatch *context_this = ((void*)0), *callback;
    jsval_t callback_args[3], mapped_value;
    jsdisp_t *jsthis, *array;
    DWORD length, k;
    HRESULT hres;

    TRACE("\n");

    hres = get_length(ctx, vthis, &jsthis, &length);
    if(FAILED(hres)) {
        FIXME("Could not get length\n");
        return hres;
    }


    if(!argc || !is_object_instance(argv[0]) || !get_object(argv[0])) {
        FIXME("Invalid arg %s\n", debugstr_jsval(argc ? argv[0] : jsval_undefined()));
        return E_INVALIDARG;
    }
    callback = get_object(argv[0]);

    if(argc > 1) {
        if(is_object_instance(argv[1]) && get_object(argv[1])) {
            context_this = get_object(argv[1]);
        }else if(!is_undefined(argv[1])) {
            FIXME("Unsupported context this %s\n", debugstr_jsval(argv[1]));
            return E_NOTIMPL;
        }
    }

    hres = create_array(ctx, length, &array);
    if(FAILED(hres))
        return hres;

    for(k = 0; k < length; k++) {
        hres = jsdisp_get_idx(jsthis, k, &callback_args[0]);
        if(hres == DISP_E_UNKNOWNNAME)
            continue;
        if(FAILED(hres))
            break;

        callback_args[1] = jsval_number(k);
        callback_args[2] = jsval_obj(jsthis);
        hres = disp_call_value(ctx, callback, context_this, DISPATCH_METHOD, 3, callback_args, &mapped_value);
        jsval_release(callback_args[0]);
        if(FAILED(hres))
            break;

        hres = jsdisp_propput_idx(array, k, mapped_value);
        if(FAILED(hres))
            break;
    }

    if(SUCCEEDED(hres) && r)
        *r = jsval_obj(array);
    else
        jsdisp_release(array);
    return hres;
}
