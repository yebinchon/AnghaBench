
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int HRESULT ;
typedef int BOOL ;


 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int NO_HINT ;
 int S_OK ;
 int TRUE ;
 scalar_t__ get_bool (int ) ;
 int get_object (int ) ;
 scalar_t__ is_bool (int ) ;
 scalar_t__ is_null (int ) ;
 scalar_t__ is_number (int ) ;
 scalar_t__ is_object_instance (int ) ;
 scalar_t__ is_string (int ) ;
 scalar_t__ is_undefined (int ) ;
 int jsval_null () ;
 int jsval_number (int) ;
 int jsval_release (int ) ;
 int jsval_strict_equal (int ,int ,int *) ;
 scalar_t__ jsval_type (int ) ;
 int to_number (int *,int ,double*) ;
 int to_primitive (int *,int ,int *,int ) ;

__attribute__((used)) static HRESULT equal_values(script_ctx_t *ctx, jsval_t lval, jsval_t rval, BOOL *ret)
{
    if(jsval_type(lval) == jsval_type(rval) || (is_number(lval) && is_number(rval)))
       return jsval_strict_equal(lval, rval, ret);


    if(is_object_instance(lval) && !get_object(lval))
        return equal_values(ctx, jsval_null(), rval, ret);
    if(is_object_instance(rval) && !get_object(rval))
        return equal_values(ctx, lval, jsval_null(), ret);

    if((is_null(lval) && is_undefined(rval)) || (is_undefined(lval) && is_null(rval))) {
        *ret = TRUE;
        return S_OK;
    }

    if(is_string(lval) && is_number(rval)) {
        double n;
        HRESULT hres;

        hres = to_number(ctx, lval, &n);
        if(FAILED(hres))
            return hres;


        return equal_values(ctx, jsval_number(n), rval, ret);
    }

    if(is_string(rval) && is_number(lval)) {
        double n;
        HRESULT hres;

        hres = to_number(ctx, rval, &n);
        if(FAILED(hres))
            return hres;


        return equal_values(ctx, lval, jsval_number(n), ret);
    }

    if(is_bool(rval))
        return equal_values(ctx, lval, jsval_number(get_bool(rval) ? 1 : 0), ret);

    if(is_bool(lval))
        return equal_values(ctx, jsval_number(get_bool(lval) ? 1 : 0), rval, ret);


    if(is_object_instance(rval) && (is_string(lval) || is_number(lval))) {
        jsval_t prim;
        HRESULT hres;

        hres = to_primitive(ctx, rval, &prim, NO_HINT);
        if(FAILED(hres))
            return hres;

        hres = equal_values(ctx, lval, prim, ret);
        jsval_release(prim);
        return hres;
    }


    if(is_object_instance(lval) && (is_string(rval) || is_number(rval))) {
        jsval_t prim;
        HRESULT hres;

        hres = to_primitive(ctx, lval, &prim, NO_HINT);
        if(FAILED(hres))
            return hres;

        hres = equal_values(ctx, prim, rval, ret);
        jsval_release(prim);
        return hres;
    }


    *ret = FALSE;
    return S_OK;
}
