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
struct pixel_format_desc {int* bits; int* shift; scalar_t__ type; } ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FORMAT_ARGBF ; 
 scalar_t__ FORMAT_ARGBF16 ; 
 float FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(const struct pixel_format_desc *format, const BYTE *src, struct vec4 *dst)
{
    DWORD mask, tmp;
    unsigned int c;

    for (c = 0; c < 4; ++c)
    {
        static const unsigned int component_offsets[4] = {3, 0, 1, 2};
        float *dst_component = (float *)dst + component_offsets[c];

        if (format->bits[c])
        {
            mask = ~0u >> (32 - format->bits[c]);

            FUNC1(&tmp, src + format->shift[c] / 8,
                    FUNC2(sizeof(DWORD), (format->shift[c] % 8 + format->bits[c] + 7) / 8));

            if (format->type == FORMAT_ARGBF16)
                *dst_component = FUNC0(tmp);
            else if (format->type == FORMAT_ARGBF)
                *dst_component = *(float *)&tmp;
            else
                *dst_component = (float)((tmp >> format->shift[c] % 8) & mask) / mask;
        }
        else
            *dst_component = 1.0f;
    }
}