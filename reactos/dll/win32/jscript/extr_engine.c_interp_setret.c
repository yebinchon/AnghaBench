
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* call_ctx; } ;
typedef TYPE_1__ script_ctx_t ;
struct TYPE_6__ {int ret; } ;
typedef TYPE_2__ call_frame_t ;
typedef int HRESULT ;


 int S_OK ;
 int TRACE (char*) ;
 int jsval_release (int ) ;
 int stack_pop (TYPE_1__*) ;

__attribute__((used)) static HRESULT interp_setret(script_ctx_t *ctx)
{
    call_frame_t *frame = ctx->call_ctx;

    TRACE("\n");

    jsval_release(frame->ret);
    frame->ret = stack_pop(ctx);
    return S_OK;
}
