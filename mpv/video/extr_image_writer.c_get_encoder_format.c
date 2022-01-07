
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVCodec {int* pix_fmts; } ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;


 int const AV_PIX_FMT_NONE ;
 int IMGFMT_RGB_DEPTH (int) ;
 int mp_imgfmt_select_best (int,int,int) ;
 int pixfmt2imgfmt (int const) ;

__attribute__((used)) static int get_encoder_format(struct AVCodec *codec, int srcfmt, bool highdepth)
{
    const enum AVPixelFormat *pix_fmts = codec->pix_fmts;
    int current = 0;
    for (int n = 0; pix_fmts && pix_fmts[n] != AV_PIX_FMT_NONE; n++) {
        int fmt = pixfmt2imgfmt(pix_fmts[n]);
        if (!fmt)
            continue;

        if (!highdepth && IMGFMT_RGB_DEPTH(fmt) > 32)
            continue;
        current = current ? mp_imgfmt_select_best(current, fmt, srcfmt) : fmt;
    }
    return current;
}
