#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int stack_size; int stack_top; int /*<<< orphan*/ * stack; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC3(script_ctx_t *ctx, jsval_t v)
{
    if(!ctx->stack_size) {
        ctx->stack = FUNC0(16*sizeof(*ctx->stack));
        if(!ctx->stack)
            return E_OUTOFMEMORY;
        ctx->stack_size = 16;
    }else if(ctx->stack_size == ctx->stack_top) {
        jsval_t *new_stack;

        new_stack = FUNC1(ctx->stack, ctx->stack_size*2*sizeof(*new_stack));
        if(!new_stack) {
            FUNC2(v);
            return E_OUTOFMEMORY;
        }

        ctx->stack = new_stack;
        ctx->stack_size *= 2;
    }

    ctx->stack[ctx->stack_top++] = v;
    return S_OK;
}