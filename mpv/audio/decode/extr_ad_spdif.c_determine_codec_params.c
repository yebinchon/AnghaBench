
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8_t ;
struct spdifContext {scalar_t__ codec_id; } ;
struct mp_filter {struct spdifContext* priv; } ;
struct TYPE_17__ {int profile; int sample_rate; } ;
struct TYPE_16__ {int flags; } ;
struct TYPE_15__ {int size; int data; } ;
typedef TYPE_1__ AVPacket ;
typedef int AVFrame ;
typedef TYPE_2__ AVCodecParserContext ;
typedef TYPE_3__ AVCodecContext ;
typedef int AVCodec ;


 scalar_t__ AV_CODEC_ID_DTS ;
 int FF_PROFILE_UNKNOWN ;
 int MP_WARN (struct mp_filter*,char*) ;
 int PARSER_FLAG_COMPLETE_FRAMES ;
 int * av_frame_alloc () ;
 int av_frame_free (int **) ;
 int av_parser_close (TYPE_2__*) ;
 TYPE_2__* av_parser_init (scalar_t__) ;
 int av_parser_parse2 (TYPE_2__*,TYPE_3__*,int **,int*,int ,int ,int ,int ,int ) ;
 TYPE_3__* avcodec_alloc_context3 (int *) ;
 int * avcodec_find_decoder (scalar_t__) ;
 int avcodec_free_context (TYPE_3__**) ;
 scalar_t__ avcodec_open2 (TYPE_3__*,int *,int *) ;
 scalar_t__ avcodec_receive_frame (TYPE_3__*,int *) ;
 scalar_t__ avcodec_send_packet (TYPE_3__*,TYPE_1__*) ;

__attribute__((used)) static void determine_codec_params(struct mp_filter *da, AVPacket *pkt,
                                   int *out_profile, int *out_rate)
{
    struct spdifContext *spdif_ctx = da->priv;
    int profile = FF_PROFILE_UNKNOWN;
    AVCodecContext *ctx = ((void*)0);
    AVFrame *frame = ((void*)0);

    AVCodecParserContext *parser = av_parser_init(spdif_ctx->codec_id);
    if (parser) {

        parser->flags |= PARSER_FLAG_COMPLETE_FRAMES;

        ctx = avcodec_alloc_context3(((void*)0));
        if (!ctx) {
            av_parser_close(parser);
            goto done;
        }

        uint8_t *d = ((void*)0);
        int s = 0;
        av_parser_parse2(parser, ctx, &d, &s, pkt->data, pkt->size, 0, 0, 0);
        *out_profile = profile = ctx->profile;
        *out_rate = ctx->sample_rate;

        avcodec_free_context(&ctx);
        av_parser_close(parser);
    }

    if (profile != FF_PROFILE_UNKNOWN || spdif_ctx->codec_id != AV_CODEC_ID_DTS)
        return;

    AVCodec *codec = avcodec_find_decoder(spdif_ctx->codec_id);
    if (!codec)
        goto done;

    frame = av_frame_alloc();
    if (!frame)
        goto done;

    ctx = avcodec_alloc_context3(codec);
    if (!ctx)
        goto done;

    if (avcodec_open2(ctx, codec, ((void*)0)) < 0)
        goto done;

    if (avcodec_send_packet(ctx, pkt) < 0)
        goto done;
    if (avcodec_receive_frame(ctx, frame) < 0)
        goto done;

    *out_profile = profile = ctx->profile;
    *out_rate = ctx->sample_rate;

done:
    av_frame_free(&frame);
    avcodec_free_context(&ctx);

    if (profile == FF_PROFILE_UNKNOWN)
        MP_WARN(da, "Failed to parse codec profile.\n");
}
