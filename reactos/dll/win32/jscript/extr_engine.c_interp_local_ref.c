
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {TYPE_5__* call_ctx; } ;
typedef TYPE_3__ script_ctx_t ;
struct TYPE_14__ {int off; } ;
struct TYPE_17__ {TYPE_1__ u; int type; } ;
typedef TYPE_4__ exprval_t ;
struct TYPE_18__ {TYPE_2__* base_scope; } ;
typedef TYPE_5__ call_frame_t ;
struct TYPE_15__ {int frame; } ;
typedef int HRESULT ;


 int EXPRVAL_STACK_REF ;
 int TRACE (char*,int const) ;
 int get_op_int (TYPE_3__*,int ) ;
 unsigned int get_op_uint (TYPE_3__*,int) ;
 int interp_identifier_ref (TYPE_3__*,int ,unsigned int const) ;
 int local_name (TYPE_5__*,int const) ;
 int local_off (TYPE_5__*,int const) ;
 int stack_push_exprval (TYPE_3__*,TYPE_4__*) ;

__attribute__((used)) static HRESULT interp_local_ref(script_ctx_t *ctx)
{
    const int arg = get_op_int(ctx, 0);
    const unsigned flags = get_op_uint(ctx, 1);
    call_frame_t *frame = ctx->call_ctx;
    exprval_t ref;

    TRACE("%d\n", arg);

    if(!frame->base_scope || !frame->base_scope->frame)
        return interp_identifier_ref(ctx, local_name(frame, arg), flags);

    ref.type = EXPRVAL_STACK_REF;
    ref.u.off = local_off(frame, arg);
    return stack_push_exprval(ctx, &ref);
}
