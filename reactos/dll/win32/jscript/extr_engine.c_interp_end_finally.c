
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* val; } ;
struct TYPE_7__ {TYPE_1__ ei; TYPE_3__* call_ctx; } ;
typedef TYPE_2__ script_ctx_t ;
typedef void* jsval_t ;
struct TYPE_8__ {int ip; } ;
typedef TYPE_3__ call_frame_t ;
typedef int HRESULT ;


 int DISP_E_EXCEPTION ;
 int S_OK ;
 int TRACE (char*) ;
 int assert (int ) ;
 int get_bool (void*) ;
 int get_number (void*) ;
 int is_bool (void*) ;
 int is_number (void*) ;
 void* stack_pop (TYPE_2__*) ;

__attribute__((used)) static HRESULT interp_end_finally(script_ctx_t *ctx)
{
    call_frame_t *frame = ctx->call_ctx;
    jsval_t v;

    TRACE("\n");

    v = stack_pop(ctx);
    assert(is_bool(v));

    if(!get_bool(v)) {
        TRACE("passing exception\n");

        ctx->ei.val = stack_pop(ctx);
        return DISP_E_EXCEPTION;
    }

    v = stack_pop(ctx);
    assert(is_number(v));
    frame->ip = get_number(v);
    return S_OK;
}
