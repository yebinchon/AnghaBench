
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_ctx {TYPE_1__* opts; } ;
struct TYPE_2__ {scalar_t__ enable_mouse_movements; } ;


 int input_lock (struct input_ctx*) ;
 int input_unlock (struct input_ctx*) ;
 int mp_input_set_mouse_pos_artificial (struct input_ctx*,int,int) ;

void mp_input_set_mouse_pos(struct input_ctx *ictx, int x, int y)
{
    input_lock(ictx);
    if (ictx->opts->enable_mouse_movements)
        mp_input_set_mouse_pos_artificial(ictx, x, y);
    input_unlock(ictx);
}
