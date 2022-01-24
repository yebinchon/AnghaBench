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
struct hook_handler {int dummy; } ;
struct command_ctx {int num_hooks; struct hook_handler** hooks; } ;
struct MPContext {struct command_ctx* command_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hook_handler**,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hook_handler*) ; 

__attribute__((used)) static void FUNC3(struct MPContext *mpctx, struct hook_handler *h)
{
    struct command_ctx *cmd = mpctx->command_ctx;
    for (int n = 0; n < cmd->num_hooks; n++) {
        if (cmd->hooks[n] == h) {
            FUNC2(cmd->hooks[n]);
            FUNC0(cmd->hooks, cmd->num_hooks, n);
            return;
        }
    }
    FUNC1(0);
}