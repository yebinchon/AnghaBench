
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct vo {struct priv* priv; } ;
struct priv {int shutdown; TYPE_5__* enc; } ;
struct TYPE_10__ {int levels; int space; } ;
struct mp_image_params {int w; int h; TYPE_1__ color; int imgfmt; int p_h; int p_w; } ;
struct mp_image {struct mp_image_params params; } ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_14__ {TYPE_4__* encoder; } ;
struct TYPE_12__ {int num; int den; int member_1; int member_0; } ;
struct TYPE_13__ {int width; int height; int pix_fmt; int time_base; TYPE_2__* codec; int color_range; int colorspace; TYPE_3__ sample_aspect_ratio; } ;
struct TYPE_11__ {TYPE_3__* supported_framerates; } ;
typedef TYPE_3__ AVRational ;
typedef TYPE_4__ AVCodecContext ;


 int AV_PIX_FMT_NONE ;
 int MP_ERR (struct vo*,char*) ;
 int MP_FATAL (struct vo*,char*,int ) ;
 size_t av_find_nearest_q_idx (TYPE_3__,TYPE_3__ const*) ;
 int av_inv_q (TYPE_3__) ;
 scalar_t__ avcodec_is_open (TYPE_4__*) ;
 int encoder_init_codec_and_muxer (TYPE_5__*,int ,struct vo*) ;
 int imgfmt2pixfmt (int ) ;
 int mp_csp_levels_to_avcol_range (int ) ;
 int mp_csp_to_avcol_spc (int ) ;
 int mp_imgfmt_to_name (int ) ;
 int on_ready ;

__attribute__((used)) static int reconfig2(struct vo *vo, struct mp_image *img)
{
    struct priv *vc = vo->priv;
    AVCodecContext *encoder = vc->enc->encoder;

    struct mp_image_params *params = &img->params;
    enum AVPixelFormat pix_fmt = imgfmt2pixfmt(params->imgfmt);
    AVRational aspect = {params->p_w, params->p_h};
    int width = params->w;
    int height = params->h;

    if (vc->shutdown)
        return -1;

    if (avcodec_is_open(encoder)) {
        if (width == encoder->width && height == encoder->height &&
            pix_fmt == encoder->pix_fmt)
        {

            MP_ERR(vo, "Ignoring mid-stream parameter changes!\n");
            return 0;
        }


        MP_ERR(vo, "resolution changes not supported.\n");
        goto error;
    }
    if (pix_fmt == AV_PIX_FMT_NONE) {
        MP_FATAL(vo, "Format %s not supported by lavc.\n",
                 mp_imgfmt_to_name(params->imgfmt));
        goto error;
    }

    encoder->sample_aspect_ratio = aspect;
    encoder->width = width;
    encoder->height = height;
    encoder->pix_fmt = pix_fmt;
    encoder->colorspace = mp_csp_to_avcol_spc(params->color.space);
    encoder->color_range = mp_csp_levels_to_avcol_range(params->color.levels);

    AVRational tb;
    tb.num = 24000;
    tb.den = 1;

    const AVRational *rates = encoder->codec->supported_framerates;
    if (rates && rates[0].den)
        tb = rates[av_find_nearest_q_idx(tb, rates)];

    encoder->time_base = av_inv_q(tb);

    if (!encoder_init_codec_and_muxer(vc->enc, on_ready, vo))
        goto error;

    return 0;

error:
    vc->shutdown = 1;
    return -1;
}
