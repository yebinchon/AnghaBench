#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jsdisp_t ;
struct TYPE_12__ {int arguments_off; int /*<<< orphan*/  arguments_obj; TYPE_4__* function; TYPE_3__* base_scope; } ;
typedef  TYPE_5__ call_frame_t ;
struct TYPE_9__ {int ref; TYPE_1__* ctx; } ;
struct TYPE_13__ {int argc; int /*<<< orphan*/ * buf; TYPE_2__ jsdisp; TYPE_5__* frame; } ;
struct TYPE_11__ {int param_cnt; int /*<<< orphan*/ * params; } ;
struct TYPE_10__ {int /*<<< orphan*/  jsobj; TYPE_5__* frame; } ;
struct TYPE_8__ {int /*<<< orphan*/ * stack; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int BOOL ;
typedef  TYPE_6__ ArgumentsInstance ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  argumentsW ; 
 TYPE_6__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(jsdisp_t *args_disp)
{
    ArgumentsInstance *arguments = FUNC2(args_disp);
    call_frame_t *frame = arguments->frame;
    const BOOL on_stack = frame->base_scope->frame == frame;
    HRESULT hres;

    /* Reset arguments value to cut the reference cycle. Note that since all activation contexts have
     * their own arguments property, it's impossible to use prototype's one during name lookup */
    FUNC5(frame->base_scope->jsobj, argumentsW, FUNC8());
    arguments->frame = NULL;

    /* Don't bother coppying arguments if call frame holds the last reference. */
    if(arguments->jsdisp.ref > 1) {
        arguments->buf = FUNC3(arguments->argc * sizeof(*arguments->buf));
        if(arguments->buf) {
            int i;

            for(i = 0; i < arguments->argc ; i++) {
                if(on_stack || i >= frame->function->param_cnt)
                    hres = FUNC7(arguments->jsdisp.ctx->stack[frame->arguments_off + i], arguments->buf+i);
                else
                    hres = FUNC4(frame->base_scope->jsobj, frame->function->params[i], arguments->buf+i);
                if(FUNC1(hres))
                    arguments->buf[i] = FUNC8();
            }
        }else {
            FUNC0("out of memory\n");
            arguments->argc = 0;
        }
    }

    FUNC6(frame->arguments_obj);
}