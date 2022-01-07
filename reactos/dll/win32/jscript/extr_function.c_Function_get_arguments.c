
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* call_ctx; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
struct TYPE_9__ {int arguments_obj; int * function_instance; struct TYPE_9__* prev_frame; } ;
typedef TYPE_2__ call_frame_t ;
struct TYPE_10__ {int dispex; } ;
typedef int HRESULT ;
typedef TYPE_3__ FunctionInstance ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 TYPE_3__* function_from_jsdisp (int *) ;
 int jsdisp_addref (int ) ;
 int jsval_null () ;
 int jsval_obj (int ) ;
 int setup_arguments_object (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static HRESULT Function_get_arguments(script_ctx_t *ctx, jsdisp_t *jsthis, jsval_t *r)
{
    FunctionInstance *function = function_from_jsdisp(jsthis);
    call_frame_t *frame;
    HRESULT hres;

    TRACE("\n");

    for(frame = ctx->call_ctx; frame; frame = frame->prev_frame) {
        if(frame->function_instance == &function->dispex) {
            if(!frame->arguments_obj) {
                hres = setup_arguments_object(ctx, frame);
                if(FAILED(hres))
                    return hres;
            }
            *r = jsval_obj(jsdisp_addref(frame->arguments_obj));
            return S_OK;
        }
    }

    *r = jsval_null();
    return S_OK;
}
