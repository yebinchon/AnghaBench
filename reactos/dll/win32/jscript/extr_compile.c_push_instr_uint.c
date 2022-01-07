
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsop_t ;
typedef int compiler_ctx_t ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 unsigned int push_instr (int *,int ) ;
 int set_arg_uint (int *,unsigned int,unsigned int) ;

__attribute__((used)) static HRESULT push_instr_uint(compiler_ctx_t *ctx, jsop_t op, unsigned arg)
{
    unsigned instr;

    instr = push_instr(ctx, op);
    if(!instr)
        return E_OUTOFMEMORY;

    set_arg_uint(ctx, instr, arg);
    return S_OK;
}
