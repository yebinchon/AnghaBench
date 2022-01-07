
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_cmd {int mouse_y; int mouse_x; scalar_t__ mouse_move; } ;
struct input_ctx {int mouse_y; int mouse_x; int cmd_queue; } ;
typedef struct mp_cmd mp_cmd_t ;


 struct mp_cmd* check_autorepeat (struct input_ctx*) ;
 int input_lock (struct input_ctx*) ;
 int input_unlock (struct input_ctx*) ;
 struct mp_cmd* queue_remove_head (int *) ;

mp_cmd_t *mp_input_read_cmd(struct input_ctx *ictx)
{
    input_lock(ictx);
    struct mp_cmd *ret = queue_remove_head(&ictx->cmd_queue);
    if (!ret)
        ret = check_autorepeat(ictx);
    if (ret && ret->mouse_move) {
        ictx->mouse_x = ret->mouse_x;
        ictx->mouse_y = ret->mouse_y;
    }
    input_unlock(ictx);
    return ret;
}
