#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  stack_top; TYPE_3__* call_ctx; } ;
typedef  TYPE_1__ script_ctx_t ;
struct TYPE_8__ {unsigned int catch_off; unsigned int finally_off; struct TYPE_8__* next; int /*<<< orphan*/  scope; int /*<<< orphan*/  stack_top; } ;
typedef  TYPE_2__ except_frame_t ;
struct TYPE_9__ {TYPE_2__* except_frame; int /*<<< orphan*/  scope; } ;
typedef  TYPE_3__ call_frame_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int FUNC1 (TYPE_1__*,int) ; 
 TYPE_2__* FUNC2 (int) ; 

__attribute__((used)) static HRESULT FUNC3(script_ctx_t *ctx)
{
    const unsigned catch_off = FUNC1(ctx, 0);
    const unsigned finally_off = FUNC1(ctx, 1);
    call_frame_t *frame = ctx->call_ctx;
    except_frame_t *except;

    FUNC0("\n");

    except = FUNC2(sizeof(*except));
    if(!except)
        return E_OUTOFMEMORY;

    except->stack_top = ctx->stack_top;
    except->scope = frame->scope;
    except->catch_off = catch_off;
    except->finally_off = finally_off;
    except->next = frame->except_frame;
    frame->except_frame = except;
    return S_OK;
}