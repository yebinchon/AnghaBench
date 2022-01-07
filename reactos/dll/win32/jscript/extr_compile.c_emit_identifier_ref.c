
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int compiler_ctx_t ;
typedef int WCHAR ;
typedef int HRESULT ;


 int OP_identid ;
 int OP_local_ref ;
 scalar_t__ bind_local (int *,int const*,int*) ;
 int push_instr_bstr_uint (int *,int ,int const*,unsigned int) ;
 int push_instr_int (int *,int ,int) ;

__attribute__((used)) static HRESULT emit_identifier_ref(compiler_ctx_t *ctx, const WCHAR *identifier, unsigned flags)
{
    int local_ref;
    if(bind_local(ctx, identifier, &local_ref))
        return push_instr_int(ctx, OP_local_ref, local_ref);
    return push_instr_bstr_uint(ctx, OP_identid, identifier, flags);
}
