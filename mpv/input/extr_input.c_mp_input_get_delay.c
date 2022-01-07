
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_ctx {int dummy; } ;


 double INFINITY ;
 int adjust_max_wait_time (struct input_ctx*,double*) ;
 int input_lock (struct input_ctx*) ;
 int input_unlock (struct input_ctx*) ;

double mp_input_get_delay(struct input_ctx *ictx)
{
    input_lock(ictx);
    double seconds = INFINITY;
    adjust_max_wait_time(ictx, &seconds);
    input_unlock(ictx);
    return seconds;
}
