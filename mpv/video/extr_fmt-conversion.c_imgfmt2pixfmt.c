
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_2__ {int fmt; int pix_fmt; } ;


 int AV_PIX_FMT_NONE ;
 int IMGFMT_AVPIXFMT_END ;
 int IMGFMT_AVPIXFMT_START ;
 int IMGFMT_NONE ;
 scalar_t__ av_pix_fmt_desc_get (int) ;
 TYPE_1__* conversion_map ;
 int pixfmt2imgfmt (int) ;

enum AVPixelFormat imgfmt2pixfmt(int fmt)
{
    if (fmt == IMGFMT_NONE)
        return AV_PIX_FMT_NONE;

    if (fmt >= IMGFMT_AVPIXFMT_START && fmt < IMGFMT_AVPIXFMT_END) {
        enum AVPixelFormat pixfmt = fmt - IMGFMT_AVPIXFMT_START;

        int mpfmt = pixfmt2imgfmt(pixfmt);
        if (mpfmt == fmt && av_pix_fmt_desc_get(pixfmt))
            return pixfmt;
        return AV_PIX_FMT_NONE;
    }

    for (int i = 0; conversion_map[i].fmt; i++) {
        if (conversion_map[i].fmt == fmt)
            return conversion_map[i].pix_fmt;
    }
    return AV_PIX_FMT_NONE;
}
