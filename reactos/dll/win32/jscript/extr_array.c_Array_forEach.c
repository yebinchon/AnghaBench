
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
typedef int WORD ;
typedef int HRESULT ;


 int ARRAY_SIZE (int *) ;
 int DISPATCH_METHOD ;
 int DISP_E_UNKNOWNNAME ;
 int E_INVALIDARG ;
 int E_NOTIMPL ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int ) ;
 int S_OK ;
 int TRACE (char*) ;
 int debugstr_jsval (int ) ;
 int disp_call_value (int *,int ,int *,int ,int ,int *,int *) ;
 int get_length (int *,int *,int **,unsigned int*) ;
 int get_object (int ) ;
 int is_object_instance (int ) ;
 int is_undefined (int ) ;
 int jsdisp_get_idx (int *,unsigned int,int *) ;
 int jsval_number (unsigned int) ;
 int jsval_obj (int *) ;
 int jsval_release (int ) ;
 int jsval_undefined () ;

__attribute__((used)) static HRESULT Array_forEach(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsval_t value, args[3], res;
    jsdisp_t *jsthis;
    unsigned length, i;
    HRESULT hres;

    TRACE("\n");

    hres = get_length(ctx, vthis, &jsthis, &length);
    if(FAILED(hres))
        return hres;


    if(!argc || !is_object_instance(argv[0]) || !get_object(argv[0])) {
        FIXME("Invalid arg %s\n", debugstr_jsval(argc ? argv[0] : jsval_undefined()));
        return E_INVALIDARG;
    }

    if(argc > 1 && !is_undefined(argv[1])) {
        FIXME("Unsupported context this %s\n", debugstr_jsval(argv[1]));
        return E_NOTIMPL;
    }

    for(i = 0; i < length; i++) {
        hres = jsdisp_get_idx(jsthis, i, &value);
        if(hres == DISP_E_UNKNOWNNAME)
            continue;
        if(FAILED(hres))
            return hres;

        args[0] = value;
        args[1] = jsval_number(i);
        args[2] = jsval_obj(jsthis);
        hres = disp_call_value(ctx, get_object(argv[0]), ((void*)0), DISPATCH_METHOD, ARRAY_SIZE(args), args, &res);
        jsval_release(value);
        if(FAILED(hres))
            return hres;
        jsval_release(res);
    }

    if(r) *r = jsval_undefined();
    return S_OK;
}
