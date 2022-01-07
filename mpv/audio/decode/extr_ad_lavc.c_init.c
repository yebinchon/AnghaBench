
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct priv {int next_pts; int codec_timebase; int avframe; TYPE_2__* avctx; int force_channel_map; } ;
struct mp_filter {int log; int global; struct priv* priv; } ;
struct mp_codec_params {int channels; scalar_t__ force_channels; } ;
struct ad_lavc_params {int threads; int avopts; int ac3drc; scalar_t__ downmix; } ;
struct TYPE_14__ {int num_chmaps; int * chmaps; } ;
struct MPOpts {TYPE_1__ audio_output_channels; } ;
struct TYPE_16__ {int id; } ;
struct TYPE_15__ {int request_channel_layout; int pkt_timebase; int codec_id; int codec_type; } ;
typedef TYPE_2__ AVCodecContext ;
typedef TYPE_3__ AVCodec ;


 int AVMEDIA_TYPE_AUDIO ;
 int AV_OPT_SEARCH_CHILDREN ;
 int * GLOBAL_CONFIG ;
 int MP_ERR (struct mp_filter*,char*,...) ;
 int MP_NOPTS_VALUE ;
 int ad_lavc_conf ;
 int av_frame_alloc () ;
 int av_opt_set (TYPE_2__*,char*,char*,int ) ;
 int av_opt_set_double (TYPE_2__*,char*,int ,int ) ;
 TYPE_2__* avcodec_alloc_context3 (TYPE_3__*) ;
 TYPE_3__* avcodec_find_decoder_by_name (char const*) ;
 scalar_t__ avcodec_open2 (TYPE_2__*,TYPE_3__*,int *) ;
 int mp_chmap_to_lavc (int *) ;
 int mp_get_codec_timebase (struct mp_codec_params*) ;
 void* mp_get_config_group (struct priv*,int ,int *) ;
 int mp_set_avcodec_threads (int ,TYPE_2__*,int ) ;
 scalar_t__ mp_set_avctx_codec_headers (TYPE_2__*,struct mp_codec_params*) ;
 int mp_set_avopts (int ,TYPE_2__*,int ) ;

__attribute__((used)) static bool init(struct mp_filter *da, struct mp_codec_params *codec,
                 const char *decoder)
{
    struct priv *ctx = da->priv;
    struct MPOpts *mpopts = mp_get_config_group(ctx, da->global, GLOBAL_CONFIG);
    struct ad_lavc_params *opts =
        mp_get_config_group(ctx, da->global, &ad_lavc_conf);
    AVCodecContext *lavc_context;
    AVCodec *lavc_codec;

    ctx->codec_timebase = mp_get_codec_timebase(codec);

    if (codec->force_channels)
        ctx->force_channel_map = codec->channels;

    lavc_codec = avcodec_find_decoder_by_name(decoder);
    if (!lavc_codec) {
        MP_ERR(da, "Cannot find codec '%s' in libavcodec...\n", decoder);
        return 0;
    }

    lavc_context = avcodec_alloc_context3(lavc_codec);
    ctx->avctx = lavc_context;
    ctx->avframe = av_frame_alloc();
    lavc_context->codec_type = AVMEDIA_TYPE_AUDIO;
    lavc_context->codec_id = lavc_codec->id;





    if (opts->downmix && mpopts->audio_output_channels.num_chmaps == 1) {
        lavc_context->request_channel_layout =
            mp_chmap_to_lavc(&mpopts->audio_output_channels.chmaps[0]);
    }


    av_opt_set_double(lavc_context, "drc_scale", opts->ac3drc,
                      AV_OPT_SEARCH_CHILDREN);






    mp_set_avopts(da->log, lavc_context, opts->avopts);

    if (mp_set_avctx_codec_headers(lavc_context, codec) < 0) {
        MP_ERR(da, "Could not set decoder parameters.\n");
        return 0;
    }

    mp_set_avcodec_threads(da->log, lavc_context, opts->threads);


    if (avcodec_open2(lavc_context, lavc_codec, ((void*)0)) < 0) {
        MP_ERR(da, "Could not open codec.\n");
        return 0;
    }

    ctx->next_pts = MP_NOPTS_VALUE;

    return 1;
}
