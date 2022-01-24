#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_5__* call_ctx; } ;
typedef  TYPE_3__ script_ctx_t ;
struct TYPE_14__ {int /*<<< orphan*/  off; } ;
struct TYPE_17__ {TYPE_1__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ exprval_t ;
struct TYPE_18__ {TYPE_2__* base_scope; } ;
typedef  TYPE_5__ call_frame_t ;
struct TYPE_15__ {int /*<<< orphan*/  frame; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  EXPRVAL_STACK_REF ; 
 int /*<<< orphan*/  FUNC0 (char*,int const) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,unsigned int const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int const) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_4__*) ; 

__attribute__((used)) static HRESULT FUNC7(script_ctx_t *ctx)
{
    const int arg = FUNC1(ctx, 0);
    const unsigned flags = FUNC2(ctx, 1);
    call_frame_t *frame = ctx->call_ctx;
    exprval_t ref;

    FUNC0("%d\n", arg);

    if(!frame->base_scope || !frame->base_scope->frame)
        return FUNC3(ctx, FUNC4(frame, arg), flags);

    ref.type = EXPRVAL_STACK_REF;
    ref.u.off = FUNC5(frame, arg);
    return FUNC6(ctx, &ref);
}