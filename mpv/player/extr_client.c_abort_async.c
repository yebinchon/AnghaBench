
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct mp_abort_entry {int client_work_type; scalar_t__ client_work_id; int * client; } ;
struct MPContext {int abort_all; int num_abort_list; int abort_lock; struct mp_abort_entry** abort_list; } ;
typedef int mpv_handle ;


 int mp_abort_trigger_locked (struct MPContext*,struct mp_abort_entry*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void abort_async(struct MPContext *mpctx, mpv_handle *ctx,
                        int type, uint64_t id)
{
    pthread_mutex_lock(&mpctx->abort_lock);


    if (ctx == ((void*)0))
        mpctx->abort_all = 1;

    for (int n = 0; n < mpctx->num_abort_list; n++) {
        struct mp_abort_entry *abort = mpctx->abort_list[n];
        if (!ctx || (abort->client == ctx && (!type ||
            (abort->client_work_type == type && abort->client_work_id == id))))
        {
            mp_abort_trigger_locked(mpctx, abort);
        }
    }

    pthread_mutex_unlock(&mpctx->abort_lock);
}
