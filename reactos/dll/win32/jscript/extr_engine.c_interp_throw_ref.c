
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int HRESULT ;


 int TRACE (char*,int const) ;
 int get_op_uint (int *,int ) ;
 int throw_reference_error (int *,int const,int *) ;

__attribute__((used)) static HRESULT interp_throw_ref(script_ctx_t *ctx)
{
    const HRESULT arg = get_op_uint(ctx, 0);

    TRACE("%08x\n", arg);

    return throw_reference_error(ctx, arg, ((void*)0));
}
