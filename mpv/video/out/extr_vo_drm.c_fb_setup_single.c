
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {int depth; } ;
struct framebuffer {int size; int map; int handle; int fb; int stride; int height; int width; } ;
struct drm_mode_map_dumb {int offset; int handle; int bpp; int size; int pitch; int height; int width; } ;
struct drm_mode_create_dumb {int offset; int handle; int bpp; int size; int pitch; int height; int width; } ;


 int BITS_PER_PIXEL ;
 int DRM_IOCTL_MODE_CREATE_DUMB ;
 int DRM_IOCTL_MODE_MAP_DUMB ;
 int MAP_FAILED ;
 int MAP_SHARED ;
 int MP_ERR (struct vo*,char*,int ) ;
 int PROT_READ ;
 int PROT_WRITE ;
 scalar_t__ drmIoctl (int,int ,struct drm_mode_map_dumb*) ;
 scalar_t__ drmModeAddFB (int,int ,int ,int ,int ,int ,int ,int *) ;
 int errno ;
 int fb_destroy (int,struct framebuffer*) ;
 int memset (int ,int ,int ) ;
 int mmap (int ,int ,int,int ,int,int ) ;
 int mp_strerror (int ) ;

__attribute__((used)) static bool fb_setup_single(struct vo *vo, int fd, struct framebuffer *buf)
{
    struct priv *p = vo->priv;

    buf->handle = 0;


    struct drm_mode_create_dumb creq = {
        .width = buf->width,
        .height = buf->height,
        .bpp = BITS_PER_PIXEL,
    };
    if (drmIoctl(fd, DRM_IOCTL_MODE_CREATE_DUMB, &creq) < 0) {
        MP_ERR(vo, "Cannot create dumb buffer: %s\n", mp_strerror(errno));
        goto err;
    }
    buf->stride = creq.pitch;
    buf->size = creq.size;
    buf->handle = creq.handle;


    if (drmModeAddFB(fd, buf->width, buf->height, p->depth, creq.bpp, buf->stride,
                     buf->handle, &buf->fb)) {
        MP_ERR(vo, "Cannot create framebuffer: %s\n", mp_strerror(errno));
        goto err;
    }


    struct drm_mode_map_dumb mreq = {
        .handle = buf->handle,
    };
    if (drmIoctl(fd, DRM_IOCTL_MODE_MAP_DUMB, &mreq)) {
        MP_ERR(vo, "Cannot map dumb buffer: %s\n", mp_strerror(errno));
        goto err;
    }


    buf->map = mmap(0, buf->size, PROT_READ | PROT_WRITE, MAP_SHARED,
                    fd, mreq.offset);
    if (buf->map == MAP_FAILED) {
        MP_ERR(vo, "Cannot map dumb buffer: %s\n", mp_strerror(errno));
        goto err;
    }

    memset(buf->map, 0, buf->size);
    return 1;

err:
    fb_destroy(fd, buf);
    return 0;
}
