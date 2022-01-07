
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;
struct drm_prime_framebuffer {scalar_t__* gem_handles; scalar_t__ fb_id; } ;


 int AV_DRM_MAX_PLANES ;
 int DRM_IOCTL_GEM_CLOSE ;
 int drmIoctl (int,int ,scalar_t__*) ;
 int drmModeRmFB (int,scalar_t__) ;
 int memset (struct drm_prime_framebuffer*,int ,int) ;

void drm_prime_destroy_framebuffer(struct mp_log *log, int fd, struct drm_prime_framebuffer *framebuffer)
{
    if (framebuffer->fb_id)
        drmModeRmFB(fd, framebuffer->fb_id);

    for (int i = 0; i < AV_DRM_MAX_PLANES; i++) {
        if (framebuffer->gem_handles[i])
            drmIoctl(fd, DRM_IOCTL_GEM_CLOSE, &framebuffer->gem_handles[i]);
    }

    memset(framebuffer, 0, sizeof(*framebuffer));
}
