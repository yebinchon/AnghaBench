
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {int num_imgfmts; int* imgfmts; int* subfmts; int vo_convert; } ;
struct mp_hwdec_devices {int dummy; } ;
struct mp_hwdec_ctx {int hw_imgfmt; scalar_t__* supported_formats; } ;
struct mp_autoconvert {TYPE_1__* f; } ;
struct TYPE_2__ {struct priv* priv; } ;


 int MP_TARRAY_REMOVE_AT (int*,int,int) ;
 int assert (struct mp_hwdec_devices*) ;
 struct mp_hwdec_ctx* hwdec_devices_get_n (struct mp_hwdec_devices*,int) ;
 int mp_autoconvert_add_imgfmt (struct mp_autoconvert*,int,scalar_t__) ;

void mp_autoconvert_add_vo_hwdec_subfmts(struct mp_autoconvert *c,
                                         struct mp_hwdec_devices *devs)
{
    struct priv *p = c->f->priv;
    assert(devs);

    int prev_format = 0;

    for (int n = 0; ; n++) {
        struct mp_hwdec_ctx *ctx = hwdec_devices_get_n(devs, n);
        if (!ctx)
            break;
        if (!ctx->hw_imgfmt || !ctx->supported_formats)
            continue;

        if (ctx->hw_imgfmt == prev_format)
            continue;
        prev_format = ctx->hw_imgfmt;


        for (int i = 0; i < p->num_imgfmts; i++) {
            if (p->imgfmts[i] != ctx->hw_imgfmt)
                continue;

            int count = p->num_imgfmts;
            MP_TARRAY_REMOVE_AT(p->imgfmts, count, i);
            count = p->num_imgfmts;
            MP_TARRAY_REMOVE_AT(p->subfmts, count, i);
            p->num_imgfmts -= 1;
            break;
        }
        for (int i = 0; ctx->supported_formats[i]; i++)
            mp_autoconvert_add_imgfmt(c, ctx->hw_imgfmt, ctx->supported_formats[i]);
    }

    p->vo_convert = 1;
}
