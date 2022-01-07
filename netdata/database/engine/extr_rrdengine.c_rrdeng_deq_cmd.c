
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t head; size_t tail; struct rrdeng_cmd* cmd_array; } ;
struct rrdengine_worker_config {unsigned int queue_size; int cmd_mutex; int cmd_cond; TYPE_1__ cmd_queue; } ;
struct rrdeng_cmd {int opcode; } ;


 int RRDENG_CMD_Q_MAX_SIZE ;
 int RRDENG_NOOP ;
 int uv_cond_signal (int *) ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;

struct rrdeng_cmd rrdeng_deq_cmd(struct rrdengine_worker_config* wc)
{
    struct rrdeng_cmd ret;
    unsigned queue_size;

    uv_mutex_lock(&wc->cmd_mutex);
    queue_size = wc->queue_size;
    if (queue_size == 0) {
        ret.opcode = RRDENG_NOOP;
    } else {

        ret = wc->cmd_queue.cmd_array[wc->cmd_queue.head];
        if (queue_size == 1) {
            wc->cmd_queue.head = wc->cmd_queue.tail = 0;
        } else {
            wc->cmd_queue.head = wc->cmd_queue.head != RRDENG_CMD_Q_MAX_SIZE - 1 ?
                                 wc->cmd_queue.head + 1 : 0;
        }
        wc->queue_size = queue_size - 1;


        uv_cond_signal(&wc->cmd_cond);
    }
    uv_mutex_unlock(&wc->cmd_mutex);

    return ret;
}
