
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tail; scalar_t__ head; } ;
struct rrdengine_worker_config {int cmd_mutex; int cmd_cond; scalar_t__ queue_size; TYPE_1__ cmd_queue; } ;


 int assert (int) ;
 scalar_t__ uv_cond_init (int *) ;
 scalar_t__ uv_mutex_init (int *) ;

void rrdeng_init_cmd_queue(struct rrdengine_worker_config* wc)
{
    wc->cmd_queue.head = wc->cmd_queue.tail = 0;
    wc->queue_size = 0;
    assert(0 == uv_cond_init(&wc->cmd_cond));
    assert(0 == uv_mutex_init(&wc->cmd_mutex));
}
