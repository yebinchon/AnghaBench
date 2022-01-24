#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct sub_bitmaps {int num_parts; struct sub_bitmap* parts; } ;
struct TYPE_4__ {int color; } ;
struct sub_bitmap {int stride; scalar_t__ bitmap; TYPE_2__ libass; } ;
struct mp_rect {int dummy; } ;
struct TYPE_3__ {int flags; } ;
struct mp_image {int num_planes; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/ * stride; int /*<<< orphan*/ * planes; TYPE_1__ fmt; int /*<<< orphan*/  params; } ;
struct mp_draw_sub_cache {int dummy; } ;
struct mp_csp_params {int input_bits; int texture_bits; int /*<<< orphan*/  levels_out; } ;
struct mp_cmat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_CSP_LEVELS_PC ; 
 struct mp_csp_params MP_CSP_PARAMS_DEFAULTS ; 
 int MP_IMGFLAG_YUV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_rect,struct mp_image*,struct sub_bitmap*,struct mp_image*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_csp_params*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_csp_params*,struct mp_cmat*) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_cmat*,struct mp_cmat*) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_cmat*,int,int*,int,int*) ; 

__attribute__((used)) static void FUNC7(struct mp_draw_sub_cache *cache, struct mp_rect bb,
                     struct mp_image *temp, int bits, struct sub_bitmaps *sbs)
{
    struct mp_csp_params cspar = MP_CSP_PARAMS_DEFAULTS;
    FUNC3(&cspar, &temp->params);
    cspar.levels_out = MP_CSP_LEVELS_PC; // RGB (libass.color)
    cspar.input_bits = bits;
    cspar.texture_bits = (bits + 7) / 8 * 8;

    struct mp_cmat yuv2rgb, rgb2yuv;
    bool need_conv = temp->fmt.flags & MP_IMGFLAG_YUV;
    if (need_conv) {
        FUNC4(&cspar, &yuv2rgb);
        FUNC5(&rgb2yuv, &yuv2rgb);
    }

    for (int i = 0; i < sbs->num_parts; ++i) {
        struct sub_bitmap *sb = &sbs->parts[i];

        struct mp_image dst;
        int src_x, src_y;
        if (!FUNC2(bb, temp, sb, &dst, &src_x, &src_y))
            continue;

        int r = (sb->libass.color >> 24) & 0xFF;
        int g = (sb->libass.color >> 16) & 0xFF;
        int b = (sb->libass.color >> 8) & 0xFF;
        int a = 255 - (sb->libass.color & 0xFF);
        int color_yuv[3];
        if (need_conv) {
            int rgb[3] = {r, g, b};
            FUNC6(&rgb2yuv, 8, rgb, cspar.texture_bits, color_yuv);
        } else {
            const int shift = (bits > 8) ? bits - 8 : 0;
            color_yuv[0] = g << shift;
            color_yuv[1] = b << shift;
            color_yuv[2] = r << shift;
        }

        int bytes = (bits + 7) / 8;
        uint8_t *alpha_p = (uint8_t *)sb->bitmap + src_y * sb->stride + src_x;
        for (int p = 0; p < (temp->num_planes > 2 ? 3 : 1); p++) {
            FUNC0(dst.planes[p], dst.stride[p], color_yuv[p],
                              alpha_p, sb->stride, a, dst.w, dst.h, bytes);
        }
        if (temp->num_planes >= 4) {
            FUNC1(dst.planes[3], dst.stride[3], alpha_p,
                              sb->stride, a, dst.w, dst.h, bytes);
        }
    }
}