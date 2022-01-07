
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsstr_t ;
typedef int WCHAR ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int * jsstr_alloc (int const*) ;
 int jsval_string (int *) ;
 int stack_push (int *,int ) ;

__attribute__((used)) static inline HRESULT stack_push_string(script_ctx_t *ctx, const WCHAR *str)
{
    jsstr_t *v;

    v = jsstr_alloc(str);
    if(!v)
        return E_OUTOFMEMORY;

    return stack_push(ctx, jsval_string(v));
}
