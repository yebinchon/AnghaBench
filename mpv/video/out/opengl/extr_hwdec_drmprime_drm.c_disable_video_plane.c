
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_hwdec {struct priv* priv; } ;
struct priv {TYPE_1__* ctx; } ;
typedef scalar_t__ drmModeAtomicReqPtr ;
struct TYPE_2__ {int fd; int drmprime_video_plane; } ;


 int DRM_MODE_ATOMIC_NONBLOCK ;
 int MP_ERR (struct ra_hwdec*,char*,int) ;
 scalar_t__ drmModeAtomicAlloc () ;
 int drmModeAtomicCommit (int ,scalar_t__,int ,int *) ;
 int drmModeAtomicFree (scalar_t__) ;
 int drm_object_set_property (scalar_t__,int ,char*,int ) ;

__attribute__((used)) static void disable_video_plane(struct ra_hwdec *hw)
{
    struct priv *p = hw->priv;
    if (!p->ctx)
        return;

    if (!p->ctx->drmprime_video_plane)
        return;





    drmModeAtomicReqPtr request = drmModeAtomicAlloc();
    if (request) {
        drm_object_set_property(request, p->ctx->drmprime_video_plane, "FB_ID", 0);
        drm_object_set_property(request, p->ctx->drmprime_video_plane, "CRTC_ID", 0);

        int ret = drmModeAtomicCommit(p->ctx->fd, request,
                                  DRM_MODE_ATOMIC_NONBLOCK, ((void*)0));

        if (ret)
            MP_ERR(hw, "Failed to commit disable plane request (code %d)", ret);
        drmModeAtomicFree(request);
    }
}
