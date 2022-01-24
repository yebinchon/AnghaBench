#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* call_ctx; } ;
typedef  TYPE_1__ script_ctx_t ;
struct TYPE_8__ {int flags; int /*<<< orphan*/  this_obj; int /*<<< orphan*/  ret; } ;
typedef  TYPE_2__ call_frame_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int EXEC_CONSTRUCTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static HRESULT FUNC8(script_ctx_t *ctx)
{
    const unsigned clear_ret = FUNC2(ctx, 0);
    call_frame_t *frame = ctx->call_ctx;

    FUNC1("\n");

    if(clear_ret)
        FUNC6(FUNC7(frame));

    if((frame->flags & EXEC_CONSTRUCTOR) && !FUNC3(frame->ret)) {
        FUNC6(frame->ret);
        FUNC0(frame->this_obj);
        frame->ret = FUNC5(frame->this_obj);
    }

    FUNC4(ctx, -1);
    return S_OK;
}