#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * stack; TYPE_3__* call_ctx; } ;
typedef  TYPE_2__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
struct TYPE_12__ {TYPE_1__* base_scope; } ;
typedef  TYPE_3__ call_frame_t ;
struct TYPE_10__ {int /*<<< orphan*/  frame; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int const) ; 
 size_t FUNC7 (TYPE_3__*,int const) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC9(script_ctx_t *ctx)
{
    const int arg = FUNC3(ctx, 0);
    call_frame_t *frame = ctx->call_ctx;
    jsval_t copy;
    HRESULT hres;

    FUNC1("%d: %s\n", arg, FUNC2(FUNC6(frame, arg)));

    if(!frame->base_scope || !frame->base_scope->frame)
        return FUNC4(ctx, FUNC6(frame, arg));

    hres = FUNC5(ctx->stack[FUNC7(frame, arg)], &copy);
    if(FUNC0(hres))
        return hres;

    return FUNC8(ctx, copy);
}