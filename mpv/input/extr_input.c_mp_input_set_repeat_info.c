
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_ctx {TYPE_1__* opts; } ;
struct TYPE_2__ {int ar_rate; int ar_delay; } ;


 int input_lock (struct input_ctx*) ;
 int input_unlock (struct input_ctx*) ;

void mp_input_set_repeat_info(struct input_ctx *ictx, int rate, int delay)
{
    input_lock(ictx);
    ictx->opts->ar_rate = rate;
    ictx->opts->ar_delay = delay;
    input_unlock(ictx);
}
