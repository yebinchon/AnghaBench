
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_ctx {int mouse_event_counter; int mouse_y; int mouse_x; } ;


 int input_lock (struct input_ctx*) ;
 int input_unlock (struct input_ctx*) ;
 scalar_t__ mp_input_test_mouse_active (struct input_ctx*,int ,int ) ;

unsigned int mp_input_get_mouse_event_counter(struct input_ctx *ictx)
{


    input_lock(ictx);
    if (mp_input_test_mouse_active(ictx, ictx->mouse_x, ictx->mouse_y))
        ictx->mouse_event_counter++;
    int ret = ictx->mouse_event_counter;
    input_unlock(ictx);
    return ret;
}
