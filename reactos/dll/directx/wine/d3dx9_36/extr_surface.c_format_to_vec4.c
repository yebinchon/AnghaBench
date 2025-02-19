
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec4 {int dummy; } ;
struct pixel_format_desc {int* bits; int* shift; scalar_t__ type; } ;
typedef int DWORD ;
typedef int BYTE ;


 scalar_t__ FORMAT_ARGBF ;
 scalar_t__ FORMAT_ARGBF16 ;
 float float_16_to_32 (int) ;
 int memcpy (int*,int const*,int ) ;
 int min (int,int) ;

__attribute__((used)) static void format_to_vec4(const struct pixel_format_desc *format, const BYTE *src, struct vec4 *dst)
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

            memcpy(&tmp, src + format->shift[c] / 8,
                    min(sizeof(DWORD), (format->shift[c] % 8 + format->bits[c] + 7) / 8));

            if (format->type == FORMAT_ARGBF16)
                *dst_component = float_16_to_32(tmp);
            else if (format->type == FORMAT_ARGBF)
                *dst_component = *(float *)&tmp;
            else
                *dst_component = (float)((tmp >> format->shift[c] % 8) & mask) / mask;
        }
        else
            *dst_component = 1.0f;
    }
}
