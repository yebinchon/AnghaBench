
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_image {int hwctx; } ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;


 int AV_HWFRAME_TRANSFER_DIRECTION_FROM ;
 int AV_PIX_FMT_NONE ;
 int av_free (int*) ;
 scalar_t__ av_hwframe_transfer_get_formats (int ,int ,int**,int ) ;
 int pixfmt2imgfmt (int) ;

int mp_image_hw_download_get_sw_format(struct mp_image *src)
{
    if (!src->hwctx)
        return 0;


    int imgfmt = 0;
    enum AVPixelFormat *fmts;
    if (av_hwframe_transfer_get_formats(src->hwctx,
            AV_HWFRAME_TRANSFER_DIRECTION_FROM, &fmts, 0) < 0)
        return 0;
    for (int n = 0; fmts[n] != AV_PIX_FMT_NONE; n++) {
        imgfmt = pixfmt2imgfmt(fmts[n]);
        if (imgfmt)
            break;
    }
    av_free(fmts);

    return imgfmt;
}
