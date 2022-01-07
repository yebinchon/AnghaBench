
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; } ;
struct TYPE_4__ {TYPE_1__ crtc; } ;
struct drm_atomic_context {int drmprime_video_plane; int draw_plane; int connector; int crtc; TYPE_2__ old_state; int fd; } ;


 int drm_mode_destroy_blob (int ,int *) ;
 int drm_object_free (int ) ;
 int talloc_free (struct drm_atomic_context*) ;

void drm_atomic_destroy_context(struct drm_atomic_context *ctx)
{
    drm_mode_destroy_blob(ctx->fd, &ctx->old_state.crtc.mode);
    drm_object_free(ctx->crtc);
    drm_object_free(ctx->connector);
    drm_object_free(ctx->draw_plane);
    drm_object_free(ctx->drmprime_video_plane);
    talloc_free(ctx);
}
