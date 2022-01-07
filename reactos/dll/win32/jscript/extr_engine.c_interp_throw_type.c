
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsstr_t ;
typedef int WCHAR ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int TRACE (char*,int const,int ) ;
 int debugstr_jsstr (int *) ;
 int * get_op_str (int *,int) ;
 int get_op_uint (int *,int ) ;
 int * jsstr_flatten (int *) ;
 int throw_type_error (int *,int const,int const*) ;

__attribute__((used)) static HRESULT interp_throw_type(script_ctx_t *ctx)
{
    const HRESULT hres = get_op_uint(ctx, 0);
    jsstr_t *str = get_op_str(ctx, 1);
    const WCHAR *ptr;

    TRACE("%08x %s\n", hres, debugstr_jsstr(str));

    ptr = jsstr_flatten(str);
    return ptr ? throw_type_error(ctx, hres, ptr) : E_OUTOFMEMORY;
}
