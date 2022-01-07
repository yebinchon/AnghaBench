
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WCHAR ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int TRACE (char*) ;
 int jsval_release (int ) ;
 int stack_pop (int *) ;
 int stack_push_string (int *,int const*) ;
 int typeof_string (int ,int const**) ;

__attribute__((used)) static HRESULT interp_typeof(script_ctx_t *ctx)
{
    const WCHAR *ret;
    jsval_t v;
    HRESULT hres;

    TRACE("\n");

    v = stack_pop(ctx);
    hres = typeof_string(v, &ret);
    jsval_release(v);
    if(FAILED(hres))
        return hres;

    return stack_push_string(ctx, ret);
}
