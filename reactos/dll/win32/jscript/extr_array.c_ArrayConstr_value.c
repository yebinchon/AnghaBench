
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
typedef unsigned int DWORD ;




 int E_NOTIMPL ;
 int FAILED (int ) ;
 int FIXME (char*,int) ;
 int JS_E_INVALID_LENGTH ;
 int S_OK ;
 int TRACE (char*) ;
 int create_array (int *,unsigned int,int **) ;
 double get_number (int ) ;
 int is_int32 (double) ;
 int is_number (int ) ;
 int jsdisp_propput_idx (int *,unsigned int,int ) ;
 int jsdisp_release (int *) ;
 int jsval_obj (int *) ;
 int throw_range_error (int *,int ,int *) ;

__attribute__((used)) static HRESULT ArrayConstr_value(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsdisp_t *obj;
    DWORD i;
    HRESULT hres;

    TRACE("\n");

    switch(flags) {
    case 128:
    case 129: {
        if(argc == 1 && is_number(argv[0])) {
            double n = get_number(argv[0]);

            if(n < 0 || !is_int32(n))
                return throw_range_error(ctx, JS_E_INVALID_LENGTH, ((void*)0));

            hres = create_array(ctx, n, &obj);
            if(FAILED(hres))
                return hres;

            *r = jsval_obj(obj);
            return S_OK;
        }

        hres = create_array(ctx, argc, &obj);
        if(FAILED(hres))
            return hres;

        for(i=0; i < argc; i++) {
            hres = jsdisp_propput_idx(obj, i, argv[i]);
            if(FAILED(hres))
                break;
        }
        if(FAILED(hres)) {
            jsdisp_release(obj);
            return hres;
        }

        *r = jsval_obj(obj);
        break;
    }
    default:
        FIXME("unimplemented flags: %x\n", flags);
        return E_NOTIMPL;
    }

    return S_OK;
}
