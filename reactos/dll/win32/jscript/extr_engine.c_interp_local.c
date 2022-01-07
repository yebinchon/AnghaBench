
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int * stack; TYPE_3__* call_ctx; } ;
typedef TYPE_2__ script_ctx_t ;
typedef int jsval_t ;
struct TYPE_12__ {TYPE_1__* base_scope; } ;
typedef TYPE_3__ call_frame_t ;
struct TYPE_10__ {int frame; } ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int TRACE (char*,int const,int ) ;
 int debugstr_w (int ) ;
 int get_op_int (TYPE_2__*,int ) ;
 int identifier_value (TYPE_2__*,int ) ;
 int jsval_copy (int ,int *) ;
 int local_name (TYPE_3__*,int const) ;
 size_t local_off (TYPE_3__*,int const) ;
 int stack_push (TYPE_2__*,int ) ;

__attribute__((used)) static HRESULT interp_local(script_ctx_t *ctx)
{
    const int arg = get_op_int(ctx, 0);
    call_frame_t *frame = ctx->call_ctx;
    jsval_t copy;
    HRESULT hres;

    TRACE("%d: %s\n", arg, debugstr_w(local_name(frame, arg)));

    if(!frame->base_scope || !frame->base_scope->frame)
        return identifier_value(ctx, local_name(frame, arg));

    hres = jsval_copy(ctx->stack[local_off(frame, arg)], &copy);
    if(FAILED(hres))
        return hres;

    return stack_push(ctx, copy);
}
