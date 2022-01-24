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
struct TYPE_8__ {TYPE_2__* call_ctx; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
struct TYPE_9__ {int /*<<< orphan*/  arguments_obj; int /*<<< orphan*/ * function_instance; struct TYPE_9__* prev_frame; } ;
typedef  TYPE_2__ call_frame_t ;
struct TYPE_10__ {int /*<<< orphan*/  dispex; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_3__ FunctionInstance ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static HRESULT FUNC7(script_ctx_t *ctx, jsdisp_t *jsthis, jsval_t *r)
{
    FunctionInstance *function = FUNC2(jsthis);
    call_frame_t *frame;
    HRESULT hres;

    FUNC1("\n");

    for(frame = ctx->call_ctx; frame; frame = frame->prev_frame) {
        if(frame->function_instance == &function->dispex) {
            if(!frame->arguments_obj) {
                hres = FUNC6(ctx, frame);
                if(FUNC0(hres))
                    return hres;
            }
            *r = FUNC5(FUNC3(frame->arguments_obj));
            return S_OK;
        }
    }

    *r = FUNC4();
    return S_OK;
}