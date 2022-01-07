
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mp_codec_params {int dummy; } ;
typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_4__ {int codec_type; int codec_id; } ;
typedef int AVCodecParameters ;
typedef TYPE_1__ AVCodecContext ;


 int AVMEDIA_TYPE_UNKNOWN ;
 int AV_CODEC_ID_NONE ;
 int avcodec_parameters_free (int **) ;
 scalar_t__ avcodec_parameters_to_context (TYPE_1__*,int *) ;
 int * mp_codec_params_to_av (struct mp_codec_params*) ;

int mp_set_avctx_codec_headers(AVCodecContext *avctx, struct mp_codec_params *c)
{
    enum AVMediaType codec_type = avctx->codec_type;
    enum AVCodecID codec_id = avctx->codec_id;
    AVCodecParameters *avp = mp_codec_params_to_av(c);
    if (!avp)
        return -1;

    int r = avcodec_parameters_to_context(avctx, avp) < 0 ? -1 : 0;
    avcodec_parameters_free(&avp);

    if (avctx->codec_type != AVMEDIA_TYPE_UNKNOWN)
        avctx->codec_type = codec_type;
    if (avctx->codec_id != AV_CODEC_ID_NONE)
        avctx->codec_id = codec_id;
    return r;
}
