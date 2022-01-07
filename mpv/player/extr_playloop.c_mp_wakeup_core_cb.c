
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int dummy; } ;


 int mp_wakeup_core (struct MPContext*) ;

void mp_wakeup_core_cb(void *ctx)
{
    struct MPContext *mpctx = ctx;
    mp_wakeup_core(mpctx);
}
