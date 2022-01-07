
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int acc; } ;
typedef TYPE_2__ script_ctx_t ;
struct TYPE_14__ {int hres; } ;
struct TYPE_16__ {TYPE_1__ u; } ;
typedef TYPE_3__ exprval_t ;
typedef int HRESULT ;


 int DISPATCH_JSCRIPT_CALLEREXECSSOURCE ;
 int DISPATCH_METHOD ;
 int TRACE (char*,unsigned int const,int const) ;
 int clear_acc (TYPE_2__*) ;
 int exprval_call (TYPE_2__*,TYPE_3__*,int,unsigned int const,int ,int *) ;
 int get_op_int (TYPE_2__*,int) ;
 unsigned int get_op_uint (TYPE_2__*,int ) ;
 int stack_args (TYPE_2__*,unsigned int const) ;
 int stack_topn_exprval (TYPE_2__*,unsigned int const,TYPE_3__*) ;
 int throw_type_error (TYPE_2__*,int ,int *) ;

__attribute__((used)) static HRESULT interp_call_member(script_ctx_t *ctx)
{
    const unsigned argn = get_op_uint(ctx, 0);
    const int do_ret = get_op_int(ctx, 1);
    exprval_t ref;

    TRACE("%d %d\n", argn, do_ret);

    if(!stack_topn_exprval(ctx, argn, &ref))
        return throw_type_error(ctx, ref.u.hres, ((void*)0));

    clear_acc(ctx);
    return exprval_call(ctx, &ref, DISPATCH_METHOD | DISPATCH_JSCRIPT_CALLEREXECSSOURCE,
            argn, stack_args(ctx, argn), do_ret ? &ctx->acc : ((void*)0));
}
