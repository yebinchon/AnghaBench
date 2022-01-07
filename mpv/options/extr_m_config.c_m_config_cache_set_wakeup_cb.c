
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_config_shadow {int num_listeners; int lock; struct m_config_cache** listeners; } ;
struct m_config_cache {int in_list; void (* wakeup_cb ) (void*) ;void* wakeup_cb_ctx; struct m_config_shadow* shadow; } ;


 int MP_TARRAY_APPEND (int *,struct m_config_cache**,int,struct m_config_cache*) ;
 int MP_TARRAY_REMOVE_AT (struct m_config_cache**,int,int) ;
 int assert (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int talloc_free (struct m_config_cache**) ;

void m_config_cache_set_wakeup_cb(struct m_config_cache *cache,
                                  void (*cb)(void *ctx), void *cb_ctx)
{
    struct m_config_shadow *shadow = cache->shadow;

    pthread_mutex_lock(&shadow->lock);
    if (cache->in_list) {
        for (int n = 0; n < shadow->num_listeners; n++) {
            if (shadow->listeners[n] == cache) {
                MP_TARRAY_REMOVE_AT(shadow->listeners, shadow->num_listeners, n);
                break;
            }
        }
        for (int n = 0; n < shadow->num_listeners; n++)
            assert(shadow->listeners[n] != cache);

        if (!shadow->num_listeners) {
            talloc_free(shadow->listeners);
            shadow->listeners = ((void*)0);
        }
    }
    if (cb) {
        MP_TARRAY_APPEND(((void*)0), shadow->listeners, shadow->num_listeners, cache);
        cache->in_list = 1;
        cache->wakeup_cb = cb;
        cache->wakeup_cb_ctx = cb_ctx;
    }
    pthread_mutex_unlock(&shadow->lock);
}
