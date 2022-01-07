
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* call_ctx; } ;
typedef TYPE_2__ script_ctx_t ;
typedef int jsdisp_t ;
struct TYPE_10__ {int scope; TYPE_1__* function; int bytecode; } ;
typedef TYPE_3__ call_frame_t ;
struct TYPE_8__ {scalar_t__ funcs; } ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int TRACE (char*,unsigned int) ;
 int create_source_function (TYPE_2__*,int ,scalar_t__,int ,int **) ;
 unsigned int get_op_uint (TYPE_2__*,int ) ;
 int jsval_obj (int *) ;
 int stack_push (TYPE_2__*,int ) ;

__attribute__((used)) static HRESULT interp_func(script_ctx_t *ctx)
{
    unsigned func_idx = get_op_uint(ctx, 0);
    call_frame_t *frame = ctx->call_ctx;
    jsdisp_t *dispex;
    HRESULT hres;

    TRACE("%d\n", func_idx);

    hres = create_source_function(ctx, frame->bytecode, frame->function->funcs+func_idx,
            frame->scope, &dispex);
    if(FAILED(hres))
        return hres;

    return stack_push(ctx, jsval_obj(dispex));
}
