
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int * stack; } ;
typedef TYPE_4__ script_ctx_t ;
struct TYPE_16__ {scalar_t__ variable_obj; TYPE_3__* function; TYPE_1__* base_scope; int arguments_obj; } ;
typedef TYPE_5__ call_frame_t ;
struct TYPE_14__ {unsigned int locals_cnt; TYPE_2__* locals; } ;
struct TYPE_13__ {int ref; int name; } ;
struct TYPE_12__ {scalar_t__ jsobj; TYPE_5__* frame; } ;
typedef int HRESULT ;
typedef int BOOL ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int TRACE (char*,TYPE_5__*) ;
 int assert (int) ;
 int jsdisp_propput_name (scalar_t__,int ,int ) ;
 size_t local_off (TYPE_5__*,int ) ;
 int setup_arguments_object (TYPE_4__*,TYPE_5__*) ;

__attribute__((used)) static HRESULT detach_variable_object(script_ctx_t *ctx, call_frame_t *frame, BOOL from_release)
{
    unsigned i;
    HRESULT hres;

    if(!frame->base_scope || !frame->base_scope->frame)
        return S_OK;

    TRACE("detaching %p\n", frame);

    assert(frame == frame->base_scope->frame);
    assert(frame->variable_obj == frame->base_scope->jsobj);

    if(!from_release && !frame->arguments_obj) {
        hres = setup_arguments_object(ctx, frame);
        if(FAILED(hres))
            return hres;
    }

    frame->base_scope->frame = ((void*)0);

    for(i = 0; i < frame->function->locals_cnt; i++) {
        hres = jsdisp_propput_name(frame->variable_obj, frame->function->locals[i].name,
                                   ctx->stack[local_off(frame, frame->function->locals[i].ref)]);
        if(FAILED(hres))
            return hres;
    }

    return S_OK;
}
