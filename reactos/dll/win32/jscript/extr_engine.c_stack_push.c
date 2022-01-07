
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stack_size; int stack_top; int * stack; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int jsval_t ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int * heap_alloc (int) ;
 int * heap_realloc (int *,int) ;
 int jsval_release (int ) ;

__attribute__((used)) static HRESULT stack_push(script_ctx_t *ctx, jsval_t v)
{
    if(!ctx->stack_size) {
        ctx->stack = heap_alloc(16*sizeof(*ctx->stack));
        if(!ctx->stack)
            return E_OUTOFMEMORY;
        ctx->stack_size = 16;
    }else if(ctx->stack_size == ctx->stack_top) {
        jsval_t *new_stack;

        new_stack = heap_realloc(ctx->stack, ctx->stack_size*2*sizeof(*new_stack));
        if(!new_stack) {
            jsval_release(v);
            return E_OUTOFMEMORY;
        }

        ctx->stack = new_stack;
        ctx->stack_size *= 2;
    }

    ctx->stack[ctx->stack_top++] = v;
    return S_OK;
}
