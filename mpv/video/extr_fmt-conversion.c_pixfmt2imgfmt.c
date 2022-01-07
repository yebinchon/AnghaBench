
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_2__ {int pix_fmt; int fmt; } ;


 int AV_PIX_FMT_NONE ;
 int IMGFMT_AVPIXFMT_END ;
 int IMGFMT_AVPIXFMT_START ;
 int IMGFMT_NONE ;
 scalar_t__ av_pix_fmt_desc_get (int) ;
 TYPE_1__* conversion_map ;

int pixfmt2imgfmt(enum AVPixelFormat pix_fmt)
{
    if (pix_fmt == AV_PIX_FMT_NONE)
        return IMGFMT_NONE;

    for (int i = 0; conversion_map[i].pix_fmt != AV_PIX_FMT_NONE; i++) {
        if (conversion_map[i].pix_fmt == pix_fmt)
            return conversion_map[i].fmt;
    }

    int generic = IMGFMT_AVPIXFMT_START + pix_fmt;
    if (generic < IMGFMT_AVPIXFMT_END && av_pix_fmt_desc_get(pix_fmt))
        return generic;

    return 0;
}
