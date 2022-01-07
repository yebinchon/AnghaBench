
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int exprval_t ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int JS_E_OBJECT_EXPECTED ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*,int const) ;
 int exprval_propget (int *,int *,int *) ;
 int exprval_propput (int *,int *,int ) ;
 int exprval_release (int *) ;
 int get_op_int (int *,int ) ;
 int jsval_number (double) ;
 int jsval_release (int ) ;
 int stack_pop_exprval (int *,int *) ;
 int stack_push (int *,int ) ;
 int throw_type_error (int *,int ,int *) ;
 int to_number (int *,int ,double*) ;

__attribute__((used)) static HRESULT interp_preinc(script_ctx_t *ctx)
{
    const int arg = get_op_int(ctx, 0);
    exprval_t ref;
    double ret;
    jsval_t v;
    HRESULT hres;

    TRACE("%d\n", arg);

    if(!stack_pop_exprval(ctx, &ref))
        return throw_type_error(ctx, JS_E_OBJECT_EXPECTED, ((void*)0));

    hres = exprval_propget(ctx, &ref, &v);
    if(SUCCEEDED(hres)) {
        double n;

        hres = to_number(ctx, v, &n);
        jsval_release(v);
        if(SUCCEEDED(hres)) {
            ret = n+(double)arg;
            hres = exprval_propput(ctx, &ref, jsval_number(ret));
        }
    }
    exprval_release(&ref);
    if(FAILED(hres))
        return hres;

    return stack_push(ctx, jsval_number(ret));
}
