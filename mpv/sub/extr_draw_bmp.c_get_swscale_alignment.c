
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chroma_xs; int chroma_ys; int* bpp; } ;
struct mp_image {int num_planes; TYPE_1__ fmt; } ;


 int SWS_MIN_BYTE_ALIGN ;

__attribute__((used)) static void get_swscale_alignment(const struct mp_image *img, int *out_xstep,
                                  int *out_ystep)
{
    int sx = (1 << img->fmt.chroma_xs);
    int sy = (1 << img->fmt.chroma_ys);

    for (int p = 0; p < img->num_planes; ++p) {
        int bits = img->fmt.bpp[p];

        while (((sx >> img->fmt.chroma_xs) * bits) % (SWS_MIN_BYTE_ALIGN * 8 * 2))
            sx *= 2;
    }

    *out_xstep = sx;
    *out_ystep = sy;
}
