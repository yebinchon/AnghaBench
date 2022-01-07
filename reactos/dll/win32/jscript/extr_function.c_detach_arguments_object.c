
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int jsdisp_t ;
struct TYPE_12__ {int arguments_off; int arguments_obj; TYPE_4__* function; TYPE_3__* base_scope; } ;
typedef TYPE_5__ call_frame_t ;
struct TYPE_9__ {int ref; TYPE_1__* ctx; } ;
struct TYPE_13__ {int argc; int * buf; TYPE_2__ jsdisp; TYPE_5__* frame; } ;
struct TYPE_11__ {int param_cnt; int * params; } ;
struct TYPE_10__ {int jsobj; TYPE_5__* frame; } ;
struct TYPE_8__ {int * stack; } ;
typedef int HRESULT ;
typedef int BOOL ;
typedef TYPE_6__ ArgumentsInstance ;


 int ERR (char*) ;
 scalar_t__ FAILED (int ) ;
 int argumentsW ;
 TYPE_6__* arguments_from_jsdisp (int *) ;
 int * heap_alloc (int) ;
 int jsdisp_propget_name (int ,int ,int *) ;
 int jsdisp_propput_name (int ,int ,int ) ;
 int jsdisp_release (int ) ;
 int jsval_copy (int ,int *) ;
 int jsval_undefined () ;

void detach_arguments_object(jsdisp_t *args_disp)
{
    ArgumentsInstance *arguments = arguments_from_jsdisp(args_disp);
    call_frame_t *frame = arguments->frame;
    const BOOL on_stack = frame->base_scope->frame == frame;
    HRESULT hres;



    jsdisp_propput_name(frame->base_scope->jsobj, argumentsW, jsval_undefined());
    arguments->frame = ((void*)0);


    if(arguments->jsdisp.ref > 1) {
        arguments->buf = heap_alloc(arguments->argc * sizeof(*arguments->buf));
        if(arguments->buf) {
            int i;

            for(i = 0; i < arguments->argc ; i++) {
                if(on_stack || i >= frame->function->param_cnt)
                    hres = jsval_copy(arguments->jsdisp.ctx->stack[frame->arguments_off + i], arguments->buf+i);
                else
                    hres = jsdisp_propget_name(frame->base_scope->jsobj, frame->function->params[i], arguments->buf+i);
                if(FAILED(hres))
                    arguments->buf[i] = jsval_undefined();
            }
        }else {
            ERR("out of memory\n");
            arguments->argc = 0;
        }
    }

    jsdisp_release(frame->arguments_obj);
}
