
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_ctx {int cmd_queue; } ;
typedef int mp_cmd_t ;


 int input_lock (struct input_ctx*) ;
 int input_unlock (struct input_ctx*) ;
 int mp_input_wakeup (struct input_ctx*) ;
 int queue_add_tail (int *,int *) ;

int mp_input_queue_cmd(struct input_ctx *ictx, mp_cmd_t *cmd)
{
    input_lock(ictx);
    if (cmd) {
        queue_add_tail(&ictx->cmd_queue, cmd);
        mp_input_wakeup(ictx);
    }
    input_unlock(ictx);
    return 1;
}
