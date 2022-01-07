
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int HRESULT ;


 int S_OK ;
 int TRACE (char*,unsigned int const) ;
 unsigned int get_op_uint (int *,int ) ;
 int stack_popn (int *,unsigned int const) ;

__attribute__((used)) static HRESULT interp_pop(script_ctx_t *ctx)
{
    const unsigned arg = get_op_uint(ctx, 0);

    TRACE("%u\n", arg);

    stack_popn(ctx, arg);
    return S_OK;
}
