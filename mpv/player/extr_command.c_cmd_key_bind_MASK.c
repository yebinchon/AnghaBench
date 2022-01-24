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
struct TYPE_3__ {char* s; } ;
struct TYPE_4__ {TYPE_1__ v; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;

    int code = FUNC3(cmd->args[0].v.s);
    if (code < 0) {
        FUNC0(mpctx, "%s is not a valid input name.\n", cmd->args[0].v.s);
        cmd->success = false;
        return;
    }
    const char *target_cmd = cmd->args[1].v.s;
    FUNC2(mpctx->input, code, FUNC1(target_cmd));
}