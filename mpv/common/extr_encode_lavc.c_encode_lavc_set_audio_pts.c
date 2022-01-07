
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encode_lavc_context {double last_audio_in_pts; int lock; scalar_t__ samples_since_last_pts; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void encode_lavc_set_audio_pts(struct encode_lavc_context *ctx, double pts)
{
    if (ctx) {
        pthread_mutex_lock(&ctx->lock);
        ctx->last_audio_in_pts = pts;
        ctx->samples_since_last_pts = 0;
        pthread_mutex_unlock(&ctx->lock);
    }
}
