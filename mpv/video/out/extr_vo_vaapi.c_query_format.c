
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {int dummy; } ;


 int IMGFMT_VAAPI ;
 scalar_t__ va_image_format_from_imgfmt (struct priv*,int) ;

__attribute__((used)) static int query_format(struct vo *vo, int imgfmt)
{
    struct priv *p = vo->priv;
    if (imgfmt == IMGFMT_VAAPI || va_image_format_from_imgfmt(p, imgfmt))
        return 1;

    return 0;
}
