
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_cmd {int dummy; } ;
struct cmd_queue {struct mp_cmd* first; } ;


 int queue_remove (struct cmd_queue*,struct mp_cmd*) ;
 int talloc_free (struct mp_cmd*) ;

__attribute__((used)) static void clear_queue(struct cmd_queue *queue)
{
    while (queue->first) {
        struct mp_cmd *item = queue->first;
        queue_remove(queue, item);
        talloc_free(item);
    }
}
