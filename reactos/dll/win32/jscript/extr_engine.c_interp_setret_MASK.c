#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* call_ctx; } ;
typedef  TYPE_1__ script_ctx_t ;
struct TYPE_6__ {int /*<<< orphan*/  ret; } ;
typedef  TYPE_2__ call_frame_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC3(script_ctx_t *ctx)
{
    call_frame_t *frame = ctx->call_ctx;

    FUNC0("\n");

    FUNC1(frame->ret);
    frame->ret = FUNC2(ctx);
    return S_OK;
}