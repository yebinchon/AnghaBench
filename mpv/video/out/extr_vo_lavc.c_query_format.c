
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vo {struct priv* priv; } ;
struct priv {TYPE_3__* enc; } ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_6__ {TYPE_2__* encoder; } ;
struct TYPE_5__ {TYPE_1__* codec; } ;
struct TYPE_4__ {int* pix_fmts; } ;


 int const AV_PIX_FMT_NONE ;
 int imgfmt2pixfmt (int) ;

__attribute__((used)) static int query_format(struct vo *vo, int format)
{
    struct priv *vc = vo->priv;

    enum AVPixelFormat pix_fmt = imgfmt2pixfmt(format);
    const enum AVPixelFormat *p = vc->enc->encoder->codec->pix_fmts;

    if (!p)
        return 1;

    while (*p != AV_PIX_FMT_NONE) {
        if (*p == pix_fmt)
            return 1;
        p++;
    }

    return 0;
}
