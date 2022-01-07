
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



 int E_NOTIMPL ;
 int FAILED (int ) ;
 int FIXME (char*,int) ;

 int S_OK ;
 int TRACE (char*) ;
 int create_number (int *,double,int **) ;
 int jsval_number (double) ;
 int jsval_obj (int *) ;
 int to_number (int *,int ,double*) ;

__attribute__((used)) static HRESULT NumberConstr_value(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    double n;
    HRESULT hres;

    TRACE("\n");

    switch(flags) {
    case 128:
        if(!argc) {
            if(r)
                *r = jsval_number(0);
            return S_OK;
        }

        hres = to_number(ctx, argv[0], &n);
        if(FAILED(hres))
            return hres;

        if(r)
            *r = jsval_number(n);
        break;

    case 129: {
        jsdisp_t *obj;

        if(argc) {
            hres = to_number(ctx, argv[0], &n);
            if(FAILED(hres))
                return hres;
        }else {
            n = 0;
        }

        hres = create_number(ctx, n, &obj);
        if(FAILED(hres))
            return hres;

        *r = jsval_obj(obj);
        break;
    }
    default:
        FIXME("unimplemented flags %x\n", flags);
        return E_NOTIMPL;
    }

    return S_OK;
}
