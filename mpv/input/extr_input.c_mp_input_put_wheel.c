
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_ctx {int dummy; } ;


 int input_lock (struct input_ctx*) ;
 int input_unlock (struct input_ctx*) ;
 int mp_input_feed_key (struct input_ctx*,int,double,int) ;

void mp_input_put_wheel(struct input_ctx *ictx, int direction, double value)
{
    if (value == 0.0)
        return;
    input_lock(ictx);
    mp_input_feed_key(ictx, direction, value, 0);
    input_unlock(ictx);
}
