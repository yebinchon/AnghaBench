
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int exprval_t ;
typedef int WCHAR ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int TRACE (char*) ;
 int exprval_propget (int *,int *,int *) ;
 int exprval_release (int *) ;
 int jsstr_undefined () ;
 int jsval_release (int ) ;
 int jsval_string (int ) ;
 int stack_pop_exprval (int *,int *) ;
 int stack_push (int *,int ) ;
 int stack_push_string (int *,int const*) ;
 int typeof_string (int ,int const**) ;
 int const* unknownW ;

__attribute__((used)) static HRESULT interp_typeofid(script_ctx_t *ctx)
{
    const WCHAR *ret;
    exprval_t ref;
    jsval_t v;
    HRESULT hres;

    TRACE("\n");

    if(!stack_pop_exprval(ctx, &ref))
        return stack_push(ctx, jsval_string(jsstr_undefined()));

    hres = exprval_propget(ctx, &ref, &v);
    exprval_release(&ref);
    if(FAILED(hres))
        return stack_push_string(ctx, unknownW);

    hres = typeof_string(v, &ret);
    jsval_release(v);
    if(FAILED(hres))
        return hres;

    return stack_push_string(ctx, ret);
}
