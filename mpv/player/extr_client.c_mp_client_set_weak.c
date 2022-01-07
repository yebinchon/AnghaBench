
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_handle {int is_weak; int lock; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void mp_client_set_weak(struct mpv_handle *ctx)
{
    pthread_mutex_lock(&ctx->lock);
    ctx->is_weak = 1;
    pthread_mutex_unlock(&ctx->lock);
}
