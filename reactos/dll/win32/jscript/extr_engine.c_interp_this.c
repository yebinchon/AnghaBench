
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* call_ctx; } ;
typedef TYPE_1__ script_ctx_t ;
struct TYPE_6__ {int this_obj; } ;
typedef TYPE_2__ call_frame_t ;
typedef int HRESULT ;


 int IDispatch_AddRef (int ) ;
 int TRACE (char*) ;
 int jsval_disp (int ) ;
 int stack_push (TYPE_1__*,int ) ;

__attribute__((used)) static HRESULT interp_this(script_ctx_t *ctx)
{
    call_frame_t *frame = ctx->call_ctx;

    TRACE("\n");

    IDispatch_AddRef(frame->this_obj);
    return stack_push(ctx, jsval_disp(frame->this_obj));
}
