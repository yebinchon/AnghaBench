
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int HRESULT ;


 int TRACE (char*,char*) ;
 int get_op_int (int *,int ) ;
 int jsval_bool (int const) ;
 int stack_push (int *,int ) ;

__attribute__((used)) static HRESULT interp_bool(script_ctx_t *ctx)
{
    const int arg = get_op_int(ctx, 0);

    TRACE("%s\n", arg ? "true" : "false");

    return stack_push(ctx, jsval_bool(arg));
}
