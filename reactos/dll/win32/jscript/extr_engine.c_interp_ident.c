
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int HRESULT ;
typedef int BSTR ;


 int TRACE (char*,int ) ;
 int debugstr_w (int const) ;
 int get_op_bstr (int *,int ) ;
 int identifier_value (int *,int const) ;

__attribute__((used)) static HRESULT interp_ident(script_ctx_t *ctx)
{
    const BSTR arg = get_op_bstr(ctx, 0);

    TRACE("%s\n", debugstr_w(arg));

    return identifier_value(ctx, arg);
}
