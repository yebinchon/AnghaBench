
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum mp_component_type { ____Placeholder_mp_component_type } mp_component_type ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ AVPixFmtDescriptor ;


 int AV_PIX_FMT_FLAG_FLOAT ;
 int AV_PIX_FMT_FLAG_HWACCEL ;
 int IMGFMT_RGB30 ;
 int MP_COMPONENT_TYPE_FLOAT ;
 int MP_COMPONENT_TYPE_UINT ;
 int MP_COMPONENT_TYPE_UNKNOWN ;
 TYPE_1__* av_pix_fmt_desc_get (int ) ;
 int imgfmt2pixfmt (int) ;

enum mp_component_type mp_imgfmt_get_component_type(int imgfmt)
{
    if (imgfmt == IMGFMT_RGB30)
        return MP_COMPONENT_TYPE_UINT;

    const AVPixFmtDescriptor *pixdesc =
        av_pix_fmt_desc_get(imgfmt2pixfmt(imgfmt));

    if (!pixdesc || (pixdesc->flags & AV_PIX_FMT_FLAG_HWACCEL))
        return MP_COMPONENT_TYPE_UNKNOWN;






    return MP_COMPONENT_TYPE_UINT;
}
