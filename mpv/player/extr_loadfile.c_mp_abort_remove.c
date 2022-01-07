
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_abort_entry {int cancel; } ;
struct MPContext {int num_abort_list; int abort_lock; struct mp_abort_entry** abort_list; } ;


 int MP_TARRAY_REMOVE_AT (struct mp_abort_entry**,int,int) ;
 int TA_FREEP (int *) ;
 int assert (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void mp_abort_remove(struct MPContext *mpctx, struct mp_abort_entry *abort)
{
    pthread_mutex_lock(&mpctx->abort_lock);
    for (int n = 0; n < mpctx->num_abort_list; n++) {
        if (mpctx->abort_list[n] == abort) {
            MP_TARRAY_REMOVE_AT(mpctx->abort_list, mpctx->num_abort_list, n);
            TA_FREEP(&abort->cancel);
            abort = ((void*)0);
            break;
        }
    }
    assert(!abort);
    pthread_mutex_unlock(&mpctx->abort_lock);
}
