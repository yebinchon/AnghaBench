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
struct mp_cmd_ctx {struct cmd_list_ctx* on_completion_priv; } ;
struct cmd_list_ctx {int completed_recursive; int /*<<< orphan*/  current; scalar_t__ current_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmd_list_ctx*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct mp_cmd_ctx *cmd)
{
    struct cmd_list_ctx *list = cmd->on_completion_priv;

    if (list->current_valid && FUNC1(list->current, FUNC2())) {
        list->completed_recursive = true;
    } else {
        FUNC0(list);
    }
}