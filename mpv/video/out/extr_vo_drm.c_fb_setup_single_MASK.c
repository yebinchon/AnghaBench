#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vo {struct priv* priv; } ;
struct priv {int /*<<< orphan*/  depth; } ;
struct framebuffer {int /*<<< orphan*/  size; int /*<<< orphan*/  map; int /*<<< orphan*/  handle; int /*<<< orphan*/  fb; int /*<<< orphan*/  stride; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct drm_mode_map_dumb {int /*<<< orphan*/  offset; int /*<<< orphan*/  handle; int /*<<< orphan*/  bpp; int /*<<< orphan*/  size; int /*<<< orphan*/  pitch; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct drm_mode_create_dumb {int /*<<< orphan*/  offset; int /*<<< orphan*/  handle; int /*<<< orphan*/  bpp; int /*<<< orphan*/  size; int /*<<< orphan*/  pitch; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITS_PER_PIXEL ; 
 int /*<<< orphan*/  DRM_IOCTL_MODE_CREATE_DUMB ; 
 int /*<<< orphan*/  DRM_IOCTL_MODE_MAP_DUMB ; 
 int /*<<< orphan*/  MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct vo*,char*,int /*<<< orphan*/ ) ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct drm_mode_map_dumb*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int,struct framebuffer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(struct vo *vo, int fd, struct framebuffer *buf)
{
    struct priv *p = vo->priv;

    buf->handle = 0;

    // create dumb buffer
    struct drm_mode_create_dumb creq = {
        .width = buf->width,
        .height = buf->height,
        .bpp = BITS_PER_PIXEL,
    };
    if (FUNC1(fd, DRM_IOCTL_MODE_CREATE_DUMB, &creq) < 0) {
        FUNC0(vo, "Cannot create dumb buffer: %s\n", FUNC6(errno));
        goto err;
    }
    buf->stride = creq.pitch;
    buf->size = creq.size;
    buf->handle = creq.handle;

    // create framebuffer object for the dumb-buffer
    if (FUNC2(fd, buf->width, buf->height, p->depth, creq.bpp, buf->stride,
                     buf->handle, &buf->fb)) {
        FUNC0(vo, "Cannot create framebuffer: %s\n", FUNC6(errno));
        goto err;
    }

    // prepare buffer for memory mapping
    struct drm_mode_map_dumb mreq = {
        .handle = buf->handle,
    };
    if (FUNC1(fd, DRM_IOCTL_MODE_MAP_DUMB, &mreq)) {
        FUNC0(vo, "Cannot map dumb buffer: %s\n", FUNC6(errno));
        goto err;
    }

    // perform actual memory mapping
    buf->map = FUNC5(0, buf->size, PROT_READ | PROT_WRITE, MAP_SHARED,
                    fd, mreq.offset);
    if (buf->map == MAP_FAILED) {
        FUNC0(vo, "Cannot map dumb buffer: %s\n", FUNC6(errno));
        goto err;
    }

    FUNC4(buf->map, 0, buf->size);
    return true;

err:
    FUNC3(fd, buf);
    return false;
}