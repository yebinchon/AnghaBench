
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct framebuffer {scalar_t__ handle; scalar_t__ fb; int size; scalar_t__ map; } ;
struct drm_mode_destroy_dumb {scalar_t__ handle; } ;


 int DRM_IOCTL_MODE_DESTROY_DUMB ;
 int drmIoctl (int,int ,struct drm_mode_destroy_dumb*) ;
 int drmModeRmFB (int,scalar_t__) ;
 int munmap (scalar_t__,int ) ;

__attribute__((used)) static void fb_destroy(int fd, struct framebuffer *buf)
{
    if (buf->map) {
        munmap(buf->map, buf->size);
    }
    if (buf->fb) {
        drmModeRmFB(fd, buf->fb);
    }
    if (buf->handle) {
        struct drm_mode_destroy_dumb dreq = {
            .handle = buf->handle,
        };
        drmIoctl(fd, DRM_IOCTL_MODE_DESTROY_DUMB, &dreq);
    }
}
