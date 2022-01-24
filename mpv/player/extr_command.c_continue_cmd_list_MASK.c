#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mp_cmd {int flags; struct mp_cmd* queue_next; } ;
struct cmd_list_ctx {int completed_recursive; int current_valid; TYPE_3__* parent; int /*<<< orphan*/  mpctx; int /*<<< orphan*/  current; } ;
struct TYPE_6__ {TYPE_2__* args; } ;
struct TYPE_4__ {struct mp_cmd* p; } ;
struct TYPE_5__ {TYPE_1__ v; } ;

/* Variables and functions */
 int MP_ASYNC_CMD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/ * on_cmd_list_sub_completion ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mp_cmd*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct cmd_list_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_cmd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_list_ctx*) ; 

__attribute__((used)) static void FUNC5(struct cmd_list_ctx *list)
{
    while (list->parent->args[0].v.p) {
        struct mp_cmd *sub = list->parent->args[0].v.p;
        list->parent->args[0].v.p = sub->queue_next;

        FUNC3(sub, NULL);

        if (sub->flags & MP_ASYNC_CMD) {
            // We run it "detached" (fire & forget)
            FUNC2(list->mpctx, sub, NULL, NULL, NULL);
        } else {
            // Run the next command once this one completes.

            list->completed_recursive = false;
            list->current_valid = true;
            list->current = FUNC1();

            FUNC2(list->mpctx, sub, NULL, on_cmd_list_sub_completion, list);

            list->current_valid = false;

            // run_command() either recursively calls the completion function,
            // or lets the command continue run in the background. If it was
            // completed recursively, we can just continue our loop. Otherwise
            // the completion handler will invoke this loop again elsewhere.
            // We could unconditionally call continue_cmd_list() in the handler
            // instead, but then stack depth would grow with list length.
            if (!list->completed_recursive)
                return;
        }
    }

    FUNC0(list->parent);
    FUNC4(list);
}