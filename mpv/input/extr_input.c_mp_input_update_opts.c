
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_ctx {int dummy; } ;


 int input_lock (struct input_ctx*) ;
 int input_unlock (struct input_ctx*) ;
 int reload_opts (struct input_ctx*,int) ;

void mp_input_update_opts(struct input_ctx *ictx)
{
    input_lock(ictx);
    reload_opts(ictx, 0);
    input_unlock(ictx);
}
