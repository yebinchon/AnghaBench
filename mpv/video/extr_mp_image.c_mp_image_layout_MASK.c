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
struct mp_imgfmt_desc {int flags; int* ys; int* bpp; int* bytes; int /*<<< orphan*/ * xs; } ;
struct mp_image_params {int imgfmt; int w; int h; } ;

/* Variables and functions */
 int AVPALETTE_SIZE ; 
 int FUNC0 (int,int) ; 
 int MP_IMGFLAG_HWACCEL ; 
 int MP_IMGFLAG_PAL ; 
 int MP_MAX_PLANES ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_image_params*) ; 
 struct mp_imgfmt_desc FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(int imgfmt, int w, int h, int stride_align,
                           int out_stride[MP_MAX_PLANES],
                           int out_plane_offset[MP_MAX_PLANES],
                           int out_plane_size[MP_MAX_PLANES])
{
    struct mp_imgfmt_desc desc = FUNC3(imgfmt);
    struct mp_image_params params = {.imgfmt = imgfmt, .w = w, .h = h};

    if (!FUNC2(&params) || desc.flags & MP_IMGFLAG_HWACCEL)
        return -1;

    // Note: for non-mod-2 4:2:0 YUV frames, we have to allocate an additional
    //       top/right border. This is needed for correct handling of such
    //       images in filter and VO code (e.g. vo_vdpau or vo_gpu).

    for (int n = 0; n < MP_MAX_PLANES; n++) {
        int alloc_w = FUNC1(w, desc.xs[n]);
        int alloc_h = FUNC0(h, 32) >> desc.ys[n];
        int line_bytes = (alloc_w * desc.bpp[n] + 7) / 8;
        out_stride[n] = FUNC0(line_bytes, stride_align);
        // also align to a multiple of desc.bytes[n]
        while (desc.bytes[n] && out_stride[n] % desc.bytes[n])
            out_stride[n] += stride_align;
        out_plane_size[n] = out_stride[n] * alloc_h;
    }
    if (desc.flags & MP_IMGFLAG_PAL)
        out_plane_size[1] = AVPALETTE_SIZE;

    int sum = 0;
    for (int n = 0; n < MP_MAX_PLANES; n++) {
        out_plane_offset[n] = out_plane_size[n] ? sum : -1;
        sum += out_plane_size[n];
    }

    return sum;
}