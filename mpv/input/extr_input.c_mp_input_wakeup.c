
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_ctx {int wakeup_ctx; int (* wakeup_cb ) (int ) ;} ;


 int stub1 (int ) ;

void mp_input_wakeup(struct input_ctx *ictx)
{
    ictx->wakeup_cb(ictx->wakeup_ctx);
}
