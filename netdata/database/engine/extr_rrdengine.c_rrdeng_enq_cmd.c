
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t tail; struct rrdeng_cmd* cmd_array; } ;
struct rrdengine_worker_config {unsigned int queue_size; int async; int cmd_mutex; TYPE_1__ cmd_queue; int cmd_cond; } ;
struct rrdeng_cmd {int dummy; } ;


 unsigned int RRDENG_CMD_Q_MAX_SIZE ;
 int assert (int) ;
 scalar_t__ uv_async_send (int *) ;
 int uv_cond_wait (int *,int *) ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;

void rrdeng_enq_cmd(struct rrdengine_worker_config* wc, struct rrdeng_cmd *cmd)
{
    unsigned queue_size;


    uv_mutex_lock(&wc->cmd_mutex);
    while ((queue_size = wc->queue_size) == RRDENG_CMD_Q_MAX_SIZE) {
        uv_cond_wait(&wc->cmd_cond, &wc->cmd_mutex);
    }
    assert(queue_size < RRDENG_CMD_Q_MAX_SIZE);

    wc->cmd_queue.cmd_array[wc->cmd_queue.tail] = *cmd;
    wc->cmd_queue.tail = wc->cmd_queue.tail != RRDENG_CMD_Q_MAX_SIZE - 1 ?
                         wc->cmd_queue.tail + 1 : 0;
    wc->queue_size = queue_size + 1;
    uv_mutex_unlock(&wc->cmd_mutex);


    assert(0 == uv_async_send(&wc->async));
}
