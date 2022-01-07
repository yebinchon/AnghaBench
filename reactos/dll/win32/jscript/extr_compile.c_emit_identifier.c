
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int compiler_ctx_t ;
typedef int WCHAR ;
typedef int HRESULT ;


 int OP_ident ;
 int OP_local ;
 scalar_t__ bind_local (int *,int const*,int*) ;
 int push_instr_bstr (int *,int ,int const*) ;
 int push_instr_int (int *,int ,int) ;

__attribute__((used)) static HRESULT emit_identifier(compiler_ctx_t *ctx, const WCHAR *identifier)
{
    int local_ref;
    if(bind_local(ctx, identifier, &local_ref))
        return push_instr_int(ctx, OP_local, local_ref);
    return push_instr_bstr(ctx, OP_ident, identifier);
}
