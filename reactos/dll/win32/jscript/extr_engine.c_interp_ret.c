
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* call_ctx; } ;
typedef TYPE_1__ script_ctx_t ;
struct TYPE_8__ {int flags; int this_obj; int ret; } ;
typedef TYPE_2__ call_frame_t ;
typedef int HRESULT ;


 int EXEC_CONSTRUCTOR ;
 int IDispatch_AddRef (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 unsigned int get_op_uint (TYPE_1__*,int ) ;
 int is_object_instance (int ) ;
 int jmp_abs (TYPE_1__*,int) ;
 int jsval_disp (int ) ;
 int jsval_release (int ) ;
 int steal_ret (TYPE_2__*) ;

__attribute__((used)) static HRESULT interp_ret(script_ctx_t *ctx)
{
    const unsigned clear_ret = get_op_uint(ctx, 0);
    call_frame_t *frame = ctx->call_ctx;

    TRACE("\n");

    if(clear_ret)
        jsval_release(steal_ret(frame));

    if((frame->flags & EXEC_CONSTRUCTOR) && !is_object_instance(frame->ret)) {
        jsval_release(frame->ret);
        IDispatch_AddRef(frame->this_obj);
        frame->ret = jsval_disp(frame->this_obj);
    }

    jmp_abs(ctx, -1);
    return S_OK;
}
