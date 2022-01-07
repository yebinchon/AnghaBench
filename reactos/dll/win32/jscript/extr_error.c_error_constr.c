
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
typedef int WORD ;
typedef double UINT ;
typedef int HRESULT ;



 int E_NOTIMPL ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int) ;

 double NAN ;
 int S_OK ;
 int create_error (int *,int *,double,int *,int **) ;
 scalar_t__ isnan (double) ;
 int jsdisp_release (int *) ;
 int * jsstr_empty () ;
 int jsstr_release (int *) ;
 int jsval_obj (int *) ;
 int to_number (int *,int ,double*) ;
 int to_string (int *,int ,int **) ;

__attribute__((used)) static HRESULT error_constr(script_ctx_t *ctx, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r, jsdisp_t *constr) {
    jsdisp_t *err;
    UINT num = 0;
    jsstr_t *msg = ((void*)0);
    HRESULT hres;

    if(argc) {
        double n;

        hres = to_number(ctx, argv[0], &n);
        if(FAILED(hres))
            n = NAN;
        if(isnan(n))
            hres = to_string(ctx, argv[0], &msg);
        if(FAILED(hres))
            return hres;
        num = n;
    }

    if(!msg) {
        if(argc > 1) {
            hres = to_string(ctx, argv[1], &msg);
            if(FAILED(hres))
                return hres;
        }else {
            msg = jsstr_empty();
        }
    }

    switch(flags) {
    case 128:
    case 129:
        hres = create_error(ctx, constr, num, msg, &err);
        jsstr_release(msg);
        if(FAILED(hres))
            return hres;

        if(r)
            *r = jsval_obj(err);
        else
            jsdisp_release(err);
        return S_OK;

    default:
        if(msg)
            jsstr_release(msg);
        FIXME("unimplemented flags %x\n", flags);
        return E_NOTIMPL;
    }
}
