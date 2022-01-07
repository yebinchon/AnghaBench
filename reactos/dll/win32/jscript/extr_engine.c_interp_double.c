
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int HRESULT ;


 int TRACE (char*,double const) ;
 double get_op_double (int *) ;
 int jsval_number (double const) ;
 int stack_push (int *,int ) ;

__attribute__((used)) static HRESULT interp_double(script_ctx_t *ctx)
{
    const double arg = get_op_double(ctx);

    TRACE("%lf\n", arg);

    return stack_push(ctx, jsval_number(arg));
}
