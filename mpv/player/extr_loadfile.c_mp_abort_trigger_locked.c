
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_abort_entry {int cancel; } ;
struct MPContext {int dummy; } ;


 int mp_cancel_trigger (int ) ;

void mp_abort_trigger_locked(struct MPContext *mpctx,
                             struct mp_abort_entry *abort)
{
    mp_cancel_trigger(abort->cancel);
}
