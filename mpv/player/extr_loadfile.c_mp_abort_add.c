
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_abort_entry {scalar_t__ cancel; } ;
struct MPContext {int abort_lock; int num_abort_list; int abort_list; } ;


 int MP_TARRAY_APPEND (int *,int ,int ,struct mp_abort_entry*) ;
 int assert (int) ;
 int mp_abort_recheck_locked (struct MPContext*,struct mp_abort_entry*) ;
 scalar_t__ mp_cancel_new (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void mp_abort_add(struct MPContext *mpctx, struct mp_abort_entry *abort)
{
    pthread_mutex_lock(&mpctx->abort_lock);
    assert(!abort->cancel);
    abort->cancel = mp_cancel_new(((void*)0));
    MP_TARRAY_APPEND(((void*)0), mpctx->abort_list, mpctx->num_abort_list, abort);
    mp_abort_recheck_locked(mpctx, abort);
    pthread_mutex_unlock(&mpctx->abort_lock);
}
