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
struct vec4 {int dummy; } ;
struct pixel_format_desc {int* bits; scalar_t__ type; int* shift; int /*<<< orphan*/  bytes_per_pixel; } ;
typedef  unsigned int DWORD ;
typedef  unsigned int BYTE ;

/* Variables and functions */
 scalar_t__ FORMAT_ARGBF ; 
 scalar_t__ FORMAT_ARGBF16 ; 
 unsigned int FUNC0 (float const) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(const struct pixel_format_desc *format, const struct vec4 *src, BYTE *dst)
{
    DWORD v, mask32;
    unsigned int c, i;

    FUNC1(dst, 0, format->bytes_per_pixel);

    for (c = 0; c < 4; ++c)
    {
        static const unsigned int component_offsets[4] = {3, 0, 1, 2};
        const float src_component = *((const float *)src + component_offsets[c]);

        if (!format->bits[c])
            continue;

        mask32 = ~0u >> (32 - format->bits[c]);

        if (format->type == FORMAT_ARGBF16)
            v = FUNC0(src_component);
        else if (format->type == FORMAT_ARGBF)
            v = *(DWORD *)&src_component;
        else
            v = (DWORD)(src_component * ((1 << format->bits[c]) - 1) + 0.5f);

        for (i = format->shift[c] / 8 * 8; i < format->shift[c] + format->bits[c]; i += 8)
        {
            BYTE mask, byte;

            if (format->shift[c] > i)
            {
                mask = mask32 << (format->shift[c] - i);
                byte = (v << (format->shift[c] - i)) & mask;
            }
            else
            {
                mask = mask32 >> (i - format->shift[c]);
                byte = (v >> (i - format->shift[c])) & mask;
            }
            dst[i / 8] |= byte;
        }
    }
}