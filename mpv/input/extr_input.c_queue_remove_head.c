
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_cmd {int dummy; } ;
struct cmd_queue {struct mp_cmd* first; } ;


 int queue_remove (struct cmd_queue*,struct mp_cmd*) ;

__attribute__((used)) static struct mp_cmd *queue_remove_head(struct cmd_queue *queue)
{
    struct mp_cmd *ret = queue->first;
    if (ret)
        queue_remove(queue, ret);
    return ret;
}
