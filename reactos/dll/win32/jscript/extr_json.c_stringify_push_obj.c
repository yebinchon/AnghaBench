
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stack_size; int stack_top; int ** stack; } ;
typedef TYPE_1__ stringify_ctx_t ;
typedef int jsdisp_t ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int ** heap_alloc (int) ;
 int ** heap_realloc (int **,int) ;

__attribute__((used)) static BOOL stringify_push_obj(stringify_ctx_t *ctx, jsdisp_t *obj)
{
    if(!ctx->stack_size) {
        ctx->stack = heap_alloc(4*sizeof(*ctx->stack));
        if(!ctx->stack)
            return FALSE;
        ctx->stack_size = 4;
    }else if(ctx->stack_top == ctx->stack_size) {
        jsdisp_t **new_stack;

        new_stack = heap_realloc(ctx->stack, ctx->stack_size*2*sizeof(*ctx->stack));
        if(!new_stack)
            return FALSE;
        ctx->stack = new_stack;
        ctx->stack_size *= 2;
    }

    ctx->stack[ctx->stack_top++] = obj;
    return TRUE;
}
