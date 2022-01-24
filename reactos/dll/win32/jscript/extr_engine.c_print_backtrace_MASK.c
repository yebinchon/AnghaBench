#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {unsigned int host_global; int /*<<< orphan*/ * stack; int /*<<< orphan*/  global; TYPE_4__* call_ctx; } ;
typedef  TYPE_3__ script_ctx_t ;
struct TYPE_10__ {unsigned int this_obj; unsigned int argc; int flags; TYPE_2__* function; TYPE_1__* base_scope; struct TYPE_10__* prev_frame; } ;
typedef  TYPE_4__ call_frame_t ;
struct TYPE_8__ {unsigned int param_cnt; scalar_t__* params; scalar_t__ name; } ;
struct TYPE_7__ {scalar_t__ frame; } ;

/* Variables and functions */
 int EXEC_RETURN_TO_INTERP ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (scalar_t__) ; 
 size_t FUNC3 (TYPE_4__*,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(script_ctx_t *ctx)
{
    unsigned depth = 0, i;
    call_frame_t *frame;

    for(frame = ctx->call_ctx; frame; frame = frame->prev_frame) {
        FUNC0("%u\t", depth);
        depth++;

        if(frame->this_obj && frame->this_obj != FUNC4(ctx->global) && frame->this_obj != ctx->host_global)
            FUNC0("%p->", frame->this_obj);
        FUNC0("%s(", frame->function->name ? FUNC2(frame->function->name) : "[unnamed]");
        if(frame->base_scope && frame->base_scope->frame) {
            for(i=0; i < frame->argc; i++) {
                if(i < frame->function->param_cnt)
                    FUNC0("%s%s=%s", i ? ", " : "", FUNC2(frame->function->params[i]),
                         FUNC1(ctx->stack[FUNC3(frame, -i-1)]));
                else
                    FUNC0("%s%s", i ? ", " : "", FUNC1(ctx->stack[FUNC3(frame, -i-1)]));
            }
        }else {
            FUNC0("[detached frame]");
        }
        FUNC0(")\n");

        if(!(frame->flags & EXEC_RETURN_TO_INTERP)) {
            FUNC0("%u\t[native code]\n", depth);
            depth++;
        }
    }
}