
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_cmd {int dummy; } ;
struct cmd_queue {int dummy; } ;
struct input_ctx {TYPE_1__* opts; struct cmd_queue cmd_queue; } ;
struct TYPE_2__ {scalar_t__ key_fifo_size; } ;


 scalar_t__ queue_count_cmds (struct cmd_queue*) ;

__attribute__((used)) static bool should_drop_cmd(struct input_ctx *ictx, struct mp_cmd *cmd)
{
    struct cmd_queue *queue = &ictx->cmd_queue;
    return queue_count_cmds(queue) >= ictx->opts->key_fifo_size;
}
