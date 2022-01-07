
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_abort_entry {scalar_t__ coupled_to_playback; } ;
struct MPContext {int num_abort_list; int abort_lock; struct mp_abort_entry** abort_list; int playback_abort; } ;


 int mp_abort_trigger_locked (struct MPContext*,struct mp_abort_entry*) ;
 int mp_cancel_trigger (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void mp_abort_playback_async(struct MPContext *mpctx)
{
    mp_cancel_trigger(mpctx->playback_abort);

    pthread_mutex_lock(&mpctx->abort_lock);

    for (int n = 0; n < mpctx->num_abort_list; n++) {
        struct mp_abort_entry *abort = mpctx->abort_list[n];
        if (abort->coupled_to_playback)
            mp_abort_trigger_locked(mpctx, abort);
    }

    pthread_mutex_unlock(&mpctx->abort_lock);
}
