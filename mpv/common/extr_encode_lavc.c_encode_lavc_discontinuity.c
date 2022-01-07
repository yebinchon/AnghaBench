
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encode_lavc_context {int lock; void* discontinuity_pts_offset; void* audio_pts_offset; } ;


 void* MP_NOPTS_VALUE ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void encode_lavc_discontinuity(struct encode_lavc_context *ctx)
{
    if (!ctx)
        return;

    pthread_mutex_lock(&ctx->lock);

    ctx->audio_pts_offset = MP_NOPTS_VALUE;
    ctx->discontinuity_pts_offset = MP_NOPTS_VALUE;

    pthread_mutex_unlock(&ctx->lock);
}
