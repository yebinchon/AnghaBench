
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_abort_entry {scalar_t__ coupled_to_playback; } ;
struct MPContext {scalar_t__ abort_all; int playback_abort; } ;


 int mp_abort_trigger_locked (struct MPContext*,struct mp_abort_entry*) ;
 scalar_t__ mp_cancel_test (int ) ;

void mp_abort_recheck_locked(struct MPContext *mpctx,
                             struct mp_abort_entry *abort)
{
    if ((abort->coupled_to_playback && mp_cancel_test(mpctx->playback_abort)) ||
        mpctx->abort_all)
    {
        mp_abort_trigger_locked(mpctx, abort);
    }
}
