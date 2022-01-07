
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum mp_csp { ____Placeholder_mp_csp } mp_csp ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_3__ {int flags; int name; } ;
typedef TYPE_1__ AVPixFmtDescriptor ;


 int AV_PIX_FMT_FLAG_RGB ;
 int AV_PIX_FMT_MONOBLACK ;
 int AV_PIX_FMT_PAL8 ;
 int IMGFMT_RGB30 ;
 int MP_CSP_AUTO ;
 int MP_CSP_RGB ;
 int MP_CSP_XYZ ;
 TYPE_1__* av_pix_fmt_desc_get (int) ;
 int imgfmt2pixfmt (int) ;
 scalar_t__ strncmp (int ,char*,int) ;

enum mp_csp mp_imgfmt_get_forced_csp(int imgfmt)
{
    if (imgfmt == IMGFMT_RGB30)
        return MP_CSP_RGB;

    enum AVPixelFormat pixfmt = imgfmt2pixfmt(imgfmt);
    const AVPixFmtDescriptor *pixdesc = av_pix_fmt_desc_get(pixfmt);


    if (pixdesc && strncmp(pixdesc->name, "xyz", 3) == 0)
        return MP_CSP_XYZ;

    if (pixdesc && (pixdesc->flags & AV_PIX_FMT_FLAG_RGB))
        return MP_CSP_RGB;

    if (pixfmt == AV_PIX_FMT_PAL8 || pixfmt == AV_PIX_FMT_MONOBLACK)
        return MP_CSP_RGB;

    return MP_CSP_AUTO;
}
