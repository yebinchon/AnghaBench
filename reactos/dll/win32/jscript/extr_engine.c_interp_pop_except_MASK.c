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
struct TYPE_8__ {TYPE_3__* call_ctx; } ;
typedef  TYPE_1__ script_ctx_t ;
struct TYPE_9__ {unsigned int finally_off; struct TYPE_9__* next; } ;
typedef  TYPE_2__ except_frame_t ;
struct TYPE_10__ {unsigned int ip; TYPE_2__* except_frame; } ;
typedef  TYPE_3__ call_frame_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int const) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int const) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC8(script_ctx_t *ctx)
{
    const unsigned ret_off = FUNC3(ctx, 0);
    call_frame_t *frame = ctx->call_ctx;
    except_frame_t *except;
    unsigned finally_off;

    FUNC1("%u\n", ret_off);

    except = frame->except_frame;
    FUNC2(except != NULL);

    finally_off = except->finally_off;
    frame->except_frame = except->next;
    FUNC4(except);

    if(finally_off) {
        HRESULT hres;

        hres = FUNC7(ctx, FUNC6(ret_off));
        if(FUNC0(hres))
            return hres;
        hres = FUNC7(ctx, FUNC5(TRUE));
        if(FUNC0(hres))
            return hres;
        frame->ip = finally_off;
    }else {
        frame->ip = ret_off;
    }

    return S_OK;
}