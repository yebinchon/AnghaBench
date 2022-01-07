
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int NO_HINT ;
 scalar_t__ SUCCEEDED (int ) ;
 scalar_t__ is_string (int ) ;
 int * jsstr_concat (int *,int *) ;
 int jsstr_release (int *) ;
 int jsval_number (double) ;
 int jsval_release (int ) ;
 int jsval_string (int *) ;
 int to_number (int *,int ,double*) ;
 int to_primitive (int *,int ,int *,int ) ;
 int to_string (int *,int ,int **) ;

__attribute__((used)) static HRESULT add_eval(script_ctx_t *ctx, jsval_t lval, jsval_t rval, jsval_t *ret)
{
    jsval_t r, l;
    HRESULT hres;

    hres = to_primitive(ctx, lval, &l, NO_HINT);
    if(FAILED(hres))
        return hres;

    hres = to_primitive(ctx, rval, &r, NO_HINT);
    if(FAILED(hres)) {
        jsval_release(l);
        return hres;
    }

    if(is_string(l) || is_string(r)) {
        jsstr_t *lstr, *rstr = ((void*)0);

        hres = to_string(ctx, l, &lstr);
        if(SUCCEEDED(hres))
            hres = to_string(ctx, r, &rstr);

        if(SUCCEEDED(hres)) {
            jsstr_t *ret_str;

            ret_str = jsstr_concat(lstr, rstr);
            if(ret_str)
                *ret = jsval_string(ret_str);
            else
                hres = E_OUTOFMEMORY;
        }

        jsstr_release(lstr);
        if(rstr)
            jsstr_release(rstr);
    }else {
        double nl, nr;

        hres = to_number(ctx, l, &nl);
        if(SUCCEEDED(hres)) {
            hres = to_number(ctx, r, &nr);
            if(SUCCEEDED(hres))
                *ret = jsval_number(nl+nr);
        }
    }

    jsval_release(r);
    jsval_release(l);
    return hres;
}
