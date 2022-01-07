
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* call_ctx; } ;
typedef TYPE_1__ script_ctx_t ;
struct TYPE_9__ {unsigned int finally_off; struct TYPE_9__* next; } ;
typedef TYPE_2__ except_frame_t ;
struct TYPE_10__ {unsigned int ip; TYPE_2__* except_frame; } ;
typedef TYPE_3__ call_frame_t ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int TRACE (char*,unsigned int const) ;
 int TRUE ;
 int assert (int ) ;
 unsigned int get_op_uint (TYPE_1__*,int ) ;
 int heap_free (TYPE_2__*) ;
 int jsval_bool (int ) ;
 int jsval_number (unsigned int const) ;
 int stack_push (TYPE_1__*,int ) ;

__attribute__((used)) static HRESULT interp_pop_except(script_ctx_t *ctx)
{
    const unsigned ret_off = get_op_uint(ctx, 0);
    call_frame_t *frame = ctx->call_ctx;
    except_frame_t *except;
    unsigned finally_off;

    TRACE("%u\n", ret_off);

    except = frame->except_frame;
    assert(except != ((void*)0));

    finally_off = except->finally_off;
    frame->except_frame = except->next;
    heap_free(except);

    if(finally_off) {
        HRESULT hres;

        hres = stack_push(ctx, jsval_number(ret_off));
        if(FAILED(hres))
            return hres;
        hres = stack_push(ctx, jsval_bool(TRUE));
        if(FAILED(hres))
            return hres;
        frame->ip = finally_off;
    }else {
        frame->ip = ret_off;
    }

    return S_OK;
}
