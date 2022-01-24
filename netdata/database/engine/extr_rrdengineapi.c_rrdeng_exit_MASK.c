#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  thread; } ;
struct rrdengine_instance {TYPE_1__ worker_config; } ;
struct rrdeng_cmd {int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  RRDENG_FD_BUDGET_PER_INSTANCE ; 
 int /*<<< orphan*/  RRDENG_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct rrdengine_instance default_global_ctx ; 
 int /*<<< orphan*/  FUNC1 (struct rrdengine_instance*) ; 
 int /*<<< orphan*/  FUNC2 (struct rrdengine_instance*) ; 
 int /*<<< orphan*/  FUNC3 (struct rrdengine_instance*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct rrdeng_cmd*) ; 
 int /*<<< orphan*/  rrdeng_reserved_file_descriptors ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct rrdengine_instance *ctx)
{
    struct rrdeng_cmd cmd;

    if (NULL == ctx) {
        return 1;
    }

    /* TODO: add page to page cache */
    cmd.opcode = RRDENG_SHUTDOWN;
    FUNC5(&ctx->worker_config, &cmd);

    FUNC0(0 == FUNC6(&ctx->worker_config.thread));

    FUNC1(ctx);
    FUNC2(ctx);

    if (ctx != &default_global_ctx) {
        FUNC3(ctx);
    }
    FUNC4(&rrdeng_reserved_file_descriptors, -RRDENG_FD_BUDGET_PER_INSTANCE);
    return 0;
}