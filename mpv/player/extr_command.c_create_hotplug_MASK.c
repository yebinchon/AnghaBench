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
struct command_ctx {scalar_t__ hotplug; } ;
struct MPContext {int /*<<< orphan*/  global; struct command_ctx* command_ctx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct MPContext*) ; 
 int /*<<< orphan*/  mp_wakeup_core_cb ; 

__attribute__((used)) static void FUNC1(struct MPContext *mpctx)
{
    struct command_ctx *cmd = mpctx->command_ctx;

    if (!cmd->hotplug) {
        cmd->hotplug = FUNC0(mpctx->global, mp_wakeup_core_cb,
                                         mpctx);
    }
}