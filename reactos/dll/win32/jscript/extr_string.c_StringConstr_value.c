
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
typedef int WORD ;
typedef int HRESULT ;



 int E_NOTIMPL ;
 int FAILED (int ) ;
 int FIXME (char*,int) ;

 int SUCCEEDED (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 int create_string (int *,int *,int **) ;
 int * jsstr_empty () ;
 int jsstr_release (int *) ;
 int jsval_obj (int *) ;
 int jsval_string (int *) ;
 int to_string (int *,int ,int **) ;

__attribute__((used)) static HRESULT StringConstr_value(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    HRESULT hres;

    TRACE("\n");

    switch(flags) {
    case 128: {
        jsstr_t *str;

        if(argc) {
            hres = to_string(ctx, argv[0], &str);
            if(FAILED(hres))
                return hres;
        }else {
            str = jsstr_empty();
        }

        *r = jsval_string(str);
        break;
    }
    case 129: {
        jsstr_t *str;
        jsdisp_t *ret;

        if(argc) {
            hres = to_string(ctx, argv[0], &str);
            if(FAILED(hres))
                return hres;
        }else {
            str = jsstr_empty();
        }

        hres = create_string(ctx, str, &ret);
        if (SUCCEEDED(hres)) *r = jsval_obj(ret);
        jsstr_release(str);
        return hres;
    }

    default:
        FIXME("unimplemented flags: %x\n", flags);
        return E_NOTIMPL;
    }

    return S_OK;
}
