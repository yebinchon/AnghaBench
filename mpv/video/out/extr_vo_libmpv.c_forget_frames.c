
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_render_context {int * cur_frame; int video_wait; } ;


 int pthread_cond_broadcast (int *) ;
 int talloc_free (int *) ;

__attribute__((used)) static void forget_frames(struct mpv_render_context *ctx, bool all)
{
    pthread_cond_broadcast(&ctx->video_wait);
    if (all) {
        talloc_free(ctx->cur_frame);
        ctx->cur_frame = ((void*)0);
    }
}
