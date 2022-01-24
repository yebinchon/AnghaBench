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
struct volume {int width; int height; int depth; } ;
struct vec4 {float w; } ;
struct pixel_format_desc {scalar_t__ type; int bytes_per_pixel; int /*<<< orphan*/  (* from_rgba ) (struct vec4*,struct vec4*) ;int /*<<< orphan*/  (* to_rgba ) (struct vec4*,struct vec4*,int /*<<< orphan*/  const*) ;} ;
struct argb_conversion_info {scalar_t__* destmask; } ;
typedef  int /*<<< orphan*/  channels ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  PALETTEENTRY ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ D3DCOLOR ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  D3DFMT_A8R8G8B8 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pixel_format_desc const*,struct vec4*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pixel_format_desc const*,int /*<<< orphan*/  const*,struct vec4*) ; 
 struct pixel_format_desc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct argb_conversion_info*,int /*<<< orphan*/  const*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct pixel_format_desc const*,struct pixel_format_desc const*,struct argb_conversion_info*) ; 
 scalar_t__ FUNC6 (struct argb_conversion_info*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct vec4*,struct vec4*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (struct vec4*,struct vec4*) ; 

void FUNC12(const BYTE *src, UINT src_row_pitch, UINT src_slice_pitch, const struct volume *src_size,
        const struct pixel_format_desc *src_format, BYTE *dst, UINT dst_row_pitch, UINT dst_slice_pitch,
        const struct volume *dst_size, const struct pixel_format_desc *dst_format, D3DCOLOR color_key,
        const PALETTEENTRY *palette)
{
    struct argb_conversion_info conv_info, ck_conv_info;
    const struct pixel_format_desc *ck_format = NULL;
    DWORD channels[4];
    UINT min_width, min_height, min_depth;
    UINT x, y, z;

    FUNC0(channels, sizeof(channels));
    FUNC5(src_format, dst_format, &conv_info);

    min_width = FUNC9(src_size->width, dst_size->width);
    min_height = FUNC9(src_size->height, dst_size->height);
    min_depth = FUNC9(src_size->depth, dst_size->depth);

    if (color_key)
    {
        /* Color keys are always represented in D3DFMT_A8R8G8B8 format. */
        ck_format = FUNC3(D3DFMT_A8R8G8B8);
        FUNC5(src_format, ck_format, &ck_conv_info);
    }

    for (z = 0; z < min_depth; z++) {
        const BYTE *src_slice_ptr = src + z * src_slice_pitch;
        BYTE *dst_slice_ptr = dst + z * dst_slice_pitch;

        for (y = 0; y < min_height; y++) {
            const BYTE *src_ptr = src_slice_ptr + y * src_row_pitch;
            BYTE *dst_ptr = dst_slice_ptr + y * dst_row_pitch;

            for (x = 0; x < min_width; x++) {
                if (!src_format->to_rgba && !dst_format->from_rgba
                        && src_format->type == dst_format->type
                        && src_format->bytes_per_pixel <= 4 && dst_format->bytes_per_pixel <= 4)
                {
                    DWORD val;

                    FUNC4(&conv_info, src_ptr, channels);
                    val = FUNC6(&conv_info, channels);

                    if (color_key)
                    {
                        DWORD ck_pixel;

                        FUNC4(&ck_conv_info, src_ptr, channels);
                        ck_pixel = FUNC6(&ck_conv_info, channels);
                        if (ck_pixel == color_key)
                            val &= ~conv_info.destmask[0];
                    }
                    FUNC7(dst_ptr, &val, dst_format->bytes_per_pixel);
                }
                else
                {
                    struct vec4 color, tmp;

                    FUNC2(src_format, src_ptr, &color);
                    if (src_format->to_rgba)
                        src_format->to_rgba(&color, &tmp, palette);
                    else
                        tmp = color;

                    if (ck_format)
                    {
                        DWORD ck_pixel;

                        FUNC1(ck_format, &tmp, (BYTE *)&ck_pixel);
                        if (ck_pixel == color_key)
                            tmp.w = 0.0f;
                    }

                    if (dst_format->from_rgba)
                        dst_format->from_rgba(&tmp, &color);
                    else
                        color = tmp;

                    FUNC1(dst_format, &color, dst_ptr);
                }

                src_ptr += src_format->bytes_per_pixel;
                dst_ptr += dst_format->bytes_per_pixel;
            }

            if (src_size->width < dst_size->width) /* black out remaining pixels */
                FUNC8(dst_ptr, 0, dst_format->bytes_per_pixel * (dst_size->width - src_size->width));
        }

        if (src_size->height < dst_size->height) /* black out remaining pixels */
            FUNC8(dst + src_size->height * dst_row_pitch, 0, dst_row_pitch * (dst_size->height - src_size->height));
    }
    if (src_size->depth < dst_size->depth) /* black out remaining pixels */
        FUNC8(dst + src_size->depth * dst_slice_pitch, 0, dst_slice_pitch * (dst_size->depth - src_size->depth));
}