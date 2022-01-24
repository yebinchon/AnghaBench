#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mp_cmd_ctx {int completed; int /*<<< orphan*/  result; scalar_t__ abort; int /*<<< orphan*/  mpctx; int /*<<< orphan*/  (* on_completion ) (struct mp_cmd_ctx*) ;int /*<<< orphan*/  success; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_cmd_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_cmd_ctx*) ; 

void FUNC4(struct mp_cmd_ctx *cmd)
{
    cmd->completed = true;
    if (!cmd->success)
        FUNC1(&cmd->result);
    if (cmd->on_completion)
        cmd->on_completion(cmd);
    if (cmd->abort)
        FUNC0(cmd->mpctx, cmd->abort);
    FUNC1(&cmd->result);
    FUNC3(cmd);
}