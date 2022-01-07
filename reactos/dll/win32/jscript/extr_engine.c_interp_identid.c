
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int HRESULT ;
typedef int BSTR ;


 int TRACE (char*,int ,unsigned int const) ;
 int debugstr_w (int const) ;
 int get_op_bstr (int *,int ) ;
 unsigned int get_op_uint (int *,int) ;
 int interp_identifier_ref (int *,int const,unsigned int const) ;

__attribute__((used)) static HRESULT interp_identid(script_ctx_t *ctx)
{
    const BSTR arg = get_op_bstr(ctx, 0);
    const unsigned flags = get_op_uint(ctx, 1);

    TRACE("%s %x\n", debugstr_w(arg), flags);

    return interp_identifier_ref(ctx, arg, flags);
}
