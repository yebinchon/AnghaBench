#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* call_ctx; } ;
typedef  TYPE_2__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
struct TYPE_10__ {int /*<<< orphan*/  scope; TYPE_1__* function; int /*<<< orphan*/  bytecode; } ;
typedef  TYPE_3__ call_frame_t ;
struct TYPE_8__ {scalar_t__ funcs; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 unsigned int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC6(script_ctx_t *ctx)
{
    unsigned func_idx = FUNC3(ctx, 0);
    call_frame_t *frame = ctx->call_ctx;
    jsdisp_t *dispex;
    HRESULT hres;

    FUNC1("%d\n", func_idx);

    hres = FUNC2(ctx, frame->bytecode, frame->function->funcs+func_idx,
            frame->scope, &dispex);
    if(FUNC0(hres))
        return hres;

    return FUNC5(ctx, FUNC4(dispex));
}