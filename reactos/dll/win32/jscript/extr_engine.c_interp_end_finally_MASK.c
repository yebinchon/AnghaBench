#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* val; } ;
struct TYPE_7__ {TYPE_1__ ei; TYPE_3__* call_ctx; } ;
typedef  TYPE_2__ script_ctx_t ;
typedef  void* jsval_t ;
struct TYPE_8__ {int /*<<< orphan*/  ip; } ;
typedef  TYPE_3__ call_frame_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DISP_E_EXCEPTION ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static HRESULT FUNC7(script_ctx_t *ctx)
{
    call_frame_t *frame = ctx->call_ctx;
    jsval_t v;

    FUNC0("\n");

    v = FUNC6(ctx);
    FUNC1(FUNC4(v));

    if(!FUNC2(v)) {
        FUNC0("passing exception\n");

        ctx->ei.val = FUNC6(ctx);
        return DISP_E_EXCEPTION;
    }

    v = FUNC6(ctx);
    FUNC1(FUNC5(v));
    frame->ip = FUNC3(v);
    return S_OK;
}