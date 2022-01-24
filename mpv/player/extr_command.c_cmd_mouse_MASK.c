#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mp_cmd_ctx {int success; TYPE_2__* args; struct MPContext* mpctx; } ;
struct MPContext {int /*<<< orphan*/  input; } ;
struct TYPE_3__ {int i; } ;
struct TYPE_4__ {TYPE_1__ v; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*,int) ; 
 int MP_KEY_MOUSE_BTN_COUNT ; 
 int MP_MBTN_BASE ; 
 int MP_MBTN_DBL_BASE ; 
 int MP_MBTN_RIGHT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int const,int const) ; 

__attribute__((used)) static void FUNC3(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;

    const int x = cmd->args[0].v.i, y = cmd->args[1].v.i;
    int button = cmd->args[2].v.i;
    if (button == -1) {// no button
        FUNC2(mpctx->input, x, y);
        return;
    }
    if (button < 0 || button >= MP_KEY_MOUSE_BTN_COUNT) {// invalid button
        FUNC0(mpctx, "%d is not a valid mouse button number.\n", button);
        cmd->success = false;
        return;
    }
    const bool dbc = cmd->args[3].v.i;
    if (dbc && button > (MP_MBTN_RIGHT - MP_MBTN_BASE)) {
        FUNC0(mpctx, "%d is not a valid mouse button for double-clicks.\n",
               button);
        cmd->success = false;
        return;
    }
    button += dbc ? MP_MBTN_DBL_BASE : MP_MBTN_BASE;
    FUNC2(mpctx->input, x, y);
    FUNC1(mpctx->input, button);
}