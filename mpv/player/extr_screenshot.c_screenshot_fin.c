
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_waiter {int dummy; } ;
struct mp_cmd_ctx {void** on_completion_priv; } ;
struct MPContext {int dummy; } ;


 int mp_waiter_wakeup (struct mp_waiter*,int ) ;
 int mp_wakeup_core (struct MPContext*) ;

__attribute__((used)) static void screenshot_fin(struct mp_cmd_ctx *cmd)
{
    void **a = cmd->on_completion_priv;
    struct MPContext *mpctx = a[0];
    struct mp_waiter *waiter = a[1];

    mp_waiter_wakeup(waiter, 0);
    mp_wakeup_core(mpctx);
}
