#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* call_ctx; } ;
typedef  TYPE_1__ script_ctx_t ;
struct TYPE_10__ {int /*<<< orphan*/  bytecode; int /*<<< orphan*/  ret; scalar_t__ this_obj; scalar_t__ variable_obj; scalar_t__ function_instance; struct TYPE_10__* prev_frame; scalar_t__ pop_locals; scalar_t__ pop_variables; TYPE_4__* scope; scalar_t__ arguments_obj; TYPE_4__* base_scope; int /*<<< orphan*/  stack_base; } ;
typedef  TYPE_2__ call_frame_t ;
struct TYPE_11__ {int ref; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static void FUNC12(script_ctx_t *ctx)
{
    call_frame_t *frame = ctx->call_ctx;

    frame->stack_base -= frame->pop_locals + frame->pop_variables;

    FUNC3(frame->scope == frame->base_scope);

    /* If current scope will be kept alive, we need to transfer local variables to its variable object. */
    if(frame->scope && frame->scope->ref > 1) {
        HRESULT hres = FUNC5(ctx, frame, TRUE);
        if(FUNC1(hres))
            FUNC0("Failed to detach variable object: %08x\n", hres);
    }

    if(frame->arguments_obj)
        FUNC4(frame->arguments_obj);
    if(frame->scope)
        FUNC10(frame->scope);

    if(frame->pop_variables)
        FUNC11(ctx, frame->pop_variables);
    FUNC11(ctx, frame->pop_locals);

    ctx->call_ctx = frame->prev_frame;

    if(frame->function_instance)
        FUNC7(frame->function_instance);
    if(frame->variable_obj)
        FUNC7(frame->variable_obj);
    if(frame->this_obj)
        FUNC2(frame->this_obj);
    FUNC8(frame->ret);
    FUNC9(frame->bytecode);
    FUNC6(frame);
}