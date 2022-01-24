#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ width; scalar_t__ height; } ;
struct TYPE_12__ {scalar_t__ width; scalar_t__ height; scalar_t__ color_family; int /*<<< orphan*/  transfer_characteristics; int /*<<< orphan*/  chroma_location; int /*<<< orphan*/  color_primaries; int /*<<< orphan*/  matrix_coefficients; int /*<<< orphan*/  pixel_range; scalar_t__ depth; int /*<<< orphan*/  pixel_type; void* subsample_h; void* subsample_w; TYPE_2__ active_region; } ;
typedef  TYPE_5__ zimg_image_format ;
struct TYPE_10__ {scalar_t__ space; scalar_t__ levels; int /*<<< orphan*/  primaries; int /*<<< orphan*/  gamma; } ;
struct mp_image_params {scalar_t__ w; scalar_t__ h; int /*<<< orphan*/  chroma_location; TYPE_3__ color; int /*<<< orphan*/  imgfmt; } ;
struct mp_zimg_repack {int* z_planes; int zplanes; int /*<<< orphan*/  zimgfmt; int /*<<< orphan*/  repack; struct mp_image_params fmt; } ;
struct TYPE_11__ {scalar_t__ fast; } ;
struct mp_zimg_context {TYPE_4__ opts; } ;
struct mp_regular_imgfmt {int num_planes; scalar_t__ component_type; int component_size; int /*<<< orphan*/  component_pad; int /*<<< orphan*/  chroma_h; int /*<<< orphan*/  chroma_w; TYPE_1__* planes; } ;
struct TYPE_8__ {int num_components; int* components; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ MP_COMPONENT_TYPE_FLOAT ; 
 scalar_t__ MP_COMPONENT_TYPE_UINT ; 
 scalar_t__ MP_CSP_LEVELS_PC ; 
 scalar_t__ MP_CSP_RGB ; 
 scalar_t__ MP_CSP_XYZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZIMG_API_VERSION ; 
 scalar_t__ ZIMG_COLOR_GREY ; 
 scalar_t__ ZIMG_COLOR_RGB ; 
 scalar_t__ ZIMG_COLOR_YUV ; 
 int /*<<< orphan*/  ZIMG_PIXEL_BYTE ; 
 int /*<<< orphan*/  ZIMG_PIXEL_FLOAT ; 
 int /*<<< orphan*/  ZIMG_PIXEL_HALF ; 
 int /*<<< orphan*/  ZIMG_PIXEL_WORD ; 
 int /*<<< orphan*/  ZIMG_RANGE_FULL ; 
 int /*<<< orphan*/  ZIMG_RANGE_LIMITED ; 
 int /*<<< orphan*/  ZIMG_TRANSFER_BT709 ; 
 int /*<<< orphan*/  ZIMG_TRANSFER_IEC_61966_2_1 ; 
 int /*<<< orphan*/  FUNC3 (struct mp_regular_imgfmt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_image_params*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mp_zimg_repack*) ; 
 int /*<<< orphan*/  FUNC11 (struct mp_zimg_repack*) ; 
 int /*<<< orphan*/  FUNC12 (struct mp_zimg_repack*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC14(zimg_image_format *zfmt, struct mp_zimg_repack *r,
                         struct mp_zimg_context *ctx)
{
    FUNC13(zfmt, ZIMG_API_VERSION);

    struct mp_image_params fmt = r->fmt;
    FUNC4(&fmt);

    r->zimgfmt = fmt.imgfmt;

    if (!r->repack)
        FUNC11(r);
    if (!r->repack)
        FUNC10(r);
    if (!r->repack)
        FUNC12(r);

    struct mp_regular_imgfmt desc;
    if (!FUNC3(&desc, r->zimgfmt))
        return false;

    // no alpha plane, no odd chroma subsampling
    if (desc.num_planes > 3 || !FUNC2(desc.chroma_w) ||
        !FUNC2(desc.chroma_h))
        return false;

    // Accept only true planar formats.
    for (int n = 0; n < desc.num_planes; n++) {
        if (desc.planes[n].num_components != 1)
            return false;
        int c = desc.planes[n].components[0];
        if (c < 1 || c > 3)
            return false;
        // Unfortunately, ffmpeg prefers GBR order for planar RGB, while zimg
        // is sane. This makes it necessary to determine and fix the order.
        r->z_planes[c - 1] = n;
    }

    r->zplanes = desc.num_planes;

    // Note: formats with subsampled chroma may have odd width or height in mpv
    // and FFmpeg. This is because the width/height is actually a cropping
    // rectangle. Reconstruct the image allocation size and set the cropping.
    zfmt->width = FUNC1(fmt.w, desc.chroma_w);
    zfmt->height = FUNC1(fmt.h, desc.chroma_h);
    if (zfmt->width != fmt.w)
        zfmt->active_region.width = fmt.w;
    if (zfmt->height != fmt.h)
        zfmt->active_region.height = fmt.h;

    zfmt->subsample_w = FUNC5(desc.chroma_w);
    zfmt->subsample_h = FUNC5(desc.chroma_h);

    zfmt->color_family = ZIMG_COLOR_YUV;
    if (desc.num_planes == 1) {
        zfmt->color_family = ZIMG_COLOR_GREY;
    } else if (fmt.color.space == MP_CSP_RGB || fmt.color.space == MP_CSP_XYZ) {
        zfmt->color_family = ZIMG_COLOR_RGB;
    }

    if (desc.component_type == MP_COMPONENT_TYPE_UINT &&
        desc.component_size == 1)
    {
        zfmt->pixel_type = ZIMG_PIXEL_BYTE;
    } else if (desc.component_type == MP_COMPONENT_TYPE_UINT &&
               desc.component_size == 2)
    {
        zfmt->pixel_type = ZIMG_PIXEL_WORD;
    } else if (desc.component_type == MP_COMPONENT_TYPE_FLOAT &&
               desc.component_size == 2)
    {
        zfmt->pixel_type = ZIMG_PIXEL_HALF;
    } else if (desc.component_type == MP_COMPONENT_TYPE_FLOAT &&
               desc.component_size == 4)
    {
        zfmt->pixel_type = ZIMG_PIXEL_FLOAT;
    } else {
        return false;
    }

    // (Formats like P010 are basically reported as P016.)
    zfmt->depth = desc.component_size * 8 + FUNC0(0, desc.component_pad);

    zfmt->pixel_range = fmt.color.levels == MP_CSP_LEVELS_PC ?
                        ZIMG_RANGE_FULL : ZIMG_RANGE_LIMITED;

    zfmt->matrix_coefficients = FUNC7(fmt.color.space);
    zfmt->transfer_characteristics = FUNC9(fmt.color.gamma);
    zfmt->color_primaries = FUNC8(fmt.color.primaries);
    zfmt->chroma_location = FUNC6(fmt.chroma_location);

    if (ctx && ctx->opts.fast) {
        // mpv's default for RGB output slows down zimg significantly.
        if (zfmt->transfer_characteristics == ZIMG_TRANSFER_IEC_61966_2_1 &&
            zfmt->color_family == ZIMG_COLOR_RGB)
            zfmt->transfer_characteristics = ZIMG_TRANSFER_BT709;
    }

    return true;
}