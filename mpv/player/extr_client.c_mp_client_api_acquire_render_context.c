
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_render_context {int dummy; } ;
struct mp_client_api {int lock; struct mpv_render_context* render_context; } ;


 scalar_t__ mp_render_context_acquire (struct mpv_render_context*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

struct mpv_render_context *
mp_client_api_acquire_render_context(struct mp_client_api *ca)
{
    struct mpv_render_context *res = ((void*)0);
    pthread_mutex_lock(&ca->lock);
    if (ca->render_context && mp_render_context_acquire(ca->render_context))
        res = ca->render_context;
    pthread_mutex_unlock(&ca->lock);
    return res;
}
