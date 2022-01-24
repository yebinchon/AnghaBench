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
struct TYPE_2__ {size_t tail; struct rrdeng_cmd* cmd_array; } ;
struct rrdengine_worker_config {unsigned int queue_size; int /*<<< orphan*/  async; int /*<<< orphan*/  cmd_mutex; TYPE_1__ cmd_queue; int /*<<< orphan*/  cmd_cond; } ;
struct rrdeng_cmd {int dummy; } ;

/* Variables and functions */
 unsigned int RRDENG_CMD_Q_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct rrdengine_worker_config* wc, struct rrdeng_cmd *cmd)
{
    unsigned queue_size;

    /* wait for free space in queue */
    FUNC3(&wc->cmd_mutex);
    while ((queue_size = wc->queue_size) == RRDENG_CMD_Q_MAX_SIZE) {
        FUNC2(&wc->cmd_cond, &wc->cmd_mutex);
    }
    FUNC0(queue_size < RRDENG_CMD_Q_MAX_SIZE);
    /* enqueue command */
    wc->cmd_queue.cmd_array[wc->cmd_queue.tail] = *cmd;
    wc->cmd_queue.tail = wc->cmd_queue.tail != RRDENG_CMD_Q_MAX_SIZE - 1 ?
                         wc->cmd_queue.tail + 1 : 0;
    wc->queue_size = queue_size + 1;
    FUNC4(&wc->cmd_mutex);

    /* wake up event loop */
    FUNC0(0 == FUNC1(&wc->async));
}