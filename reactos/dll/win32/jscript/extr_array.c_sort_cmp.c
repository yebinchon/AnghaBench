
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
typedef int INT ;
typedef int HRESULT ;


 int DISPATCH_METHOD ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 double get_number (int ) ;
 scalar_t__ is_number (int ) ;
 scalar_t__ is_undefined (int ) ;
 int jsdisp_call_value (int *,int *,int ,int,int *,int *) ;
 int jsstr_cmp (int *,int *) ;
 int jsstr_release (int *) ;
 int jsval_release (int ) ;
 int to_number (int *,int ,double*) ;
 int to_string (int *,int ,int **) ;

__attribute__((used)) static HRESULT sort_cmp(script_ctx_t *ctx, jsdisp_t *cmp_func, jsval_t v1, jsval_t v2, INT *cmp)
{
    HRESULT hres;

    if(cmp_func) {
        jsval_t args[2];
        jsval_t res;
        double n;

        args[0] = v1;
        args[1] = v2;

        hres = jsdisp_call_value(cmp_func, ((void*)0), DISPATCH_METHOD, 2, args, &res);
        if(FAILED(hres))
            return hres;

        hres = to_number(ctx, res, &n);
        jsval_release(res);
        if(FAILED(hres))
            return hres;

        if(n == 0)
            *cmp = 0;
        *cmp = n > 0.0 ? 1 : -1;
    }else if(is_undefined(v1)) {
        *cmp = is_undefined(v2) ? 0 : 1;
    }else if(is_undefined(v2)) {
        *cmp = -1;
    }else if(is_number(v1) && is_number(v2)) {
        double d = get_number(v1)-get_number(v2);
        if(d > 0.0)
            *cmp = 1;
        else
            *cmp = d < -0.0 ? -1 : 0;
    }else {
        jsstr_t *x, *y;

        hres = to_string(ctx, v1, &x);
        if(FAILED(hres))
            return hres;

        hres = to_string(ctx, v2, &y);
        if(SUCCEEDED(hres)) {
            *cmp = jsstr_cmp(x, y);
            jsstr_release(y);
        }
        jsstr_release(x);
        if(FAILED(hres))
            return hres;
    }

    return S_OK;
}
