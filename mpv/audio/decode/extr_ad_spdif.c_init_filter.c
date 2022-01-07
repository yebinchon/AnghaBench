
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct spdifContext {int codec_id; int need_close; int fmt; int sstride; int use_dts_hd; TYPE_3__* lavf_ctx; } ;
struct mp_filter {struct spdifContext* priv; } ;
struct mp_chmap {int dummy; } ;
struct TYPE_12__ {int direct; } ;
struct TYPE_11__ {TYPE_4__* pb; int oformat; } ;
struct TYPE_10__ {TYPE_1__* codecpar; } ;
struct TYPE_9__ {int codec_id; } ;
typedef TYPE_2__ AVStream ;
typedef int AVPacket ;
typedef TYPE_3__ AVFormatContext ;
typedef int AVDictionary ;


 int AF_FORMAT_S_AAC ;
 int AF_FORMAT_S_AC3 ;
 int AF_FORMAT_S_DTS ;
 int AF_FORMAT_S_DTSHD ;
 int AF_FORMAT_S_EAC3 ;
 int AF_FORMAT_S_MP3 ;
 int AF_FORMAT_S_TRUEHD ;






 int FF_PROFILE_DTS_HD_HRA ;
 int FF_PROFILE_DTS_HD_MA ;
 int FF_PROFILE_UNKNOWN ;
 int MP_FATAL (struct mp_filter*,char*) ;
 int MP_VERBOSE (struct mp_filter*,char*,int,int) ;
 int OUTBUF_SIZE ;
 int abort () ;
 int av_dict_free (int **) ;
 int av_dict_set_int (int **,char*,int,int ) ;
 int av_free (void*) ;
 int av_guess_format (char*,int *,int *) ;
 void* av_mallocz (int ) ;
 TYPE_3__* avformat_alloc_context () ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int ) ;
 scalar_t__ avformat_write_header (TYPE_3__*,int **) ;
 TYPE_4__* avio_alloc_context (void*,int ,int,struct spdifContext*,int *,int ,int *) ;
 int destroy (struct mp_filter*) ;
 int determine_codec_params (struct mp_filter*,int *,int*,int*) ;
 int mp_aframe_create () ;
 int mp_aframe_get_sstride (int ) ;
 int mp_aframe_set_chmap (int ,struct mp_chmap*) ;
 int mp_aframe_set_format (int ,int) ;
 int mp_aframe_set_rate (int ,int) ;
 int mp_chmap_from_channels (struct mp_chmap*,int) ;
 int mp_filter_internal_mark_failed (struct mp_filter*) ;
 int talloc_steal (struct spdifContext*,int ) ;
 int write_packet ;

__attribute__((used)) static int init_filter(struct mp_filter *da, AVPacket *pkt)
{
    struct spdifContext *spdif_ctx = da->priv;

    int profile = FF_PROFILE_UNKNOWN;
    int c_rate = 0;
    determine_codec_params(da, pkt, &profile, &c_rate);
    MP_VERBOSE(da, "In: profile=%d samplerate=%d\n", profile, c_rate);

    AVFormatContext *lavf_ctx = avformat_alloc_context();
    if (!lavf_ctx)
        goto fail;

    spdif_ctx->lavf_ctx = lavf_ctx;

    lavf_ctx->oformat = av_guess_format("spdif", ((void*)0), ((void*)0));
    if (!lavf_ctx->oformat)
        goto fail;

    void *buffer = av_mallocz(OUTBUF_SIZE);
    if (!buffer)
        abort();
    lavf_ctx->pb = avio_alloc_context(buffer, OUTBUF_SIZE, 1, spdif_ctx, ((void*)0),
                                      write_packet, ((void*)0));
    if (!lavf_ctx->pb) {
        av_free(buffer);
        goto fail;
    }






    AVStream *stream = avformat_new_stream(lavf_ctx, 0);
    if (!stream)
        goto fail;

    stream->codecpar->codec_id = spdif_ctx->codec_id;

    AVDictionary *format_opts = ((void*)0);

    spdif_ctx->fmt = mp_aframe_create();
    talloc_steal(spdif_ctx, spdif_ctx->fmt);

    int num_channels = 0;
    int sample_format = 0;
    int samplerate = 0;
    switch (spdif_ctx->codec_id) {
    case 133:
        sample_format = AF_FORMAT_S_AAC;
        samplerate = 48000;
        num_channels = 2;
        break;
    case 132:
        sample_format = AF_FORMAT_S_AC3;
        samplerate = c_rate > 0 ? c_rate : 48000;
        num_channels = 2;
        break;
    case 131: {
        bool is_hd = profile == FF_PROFILE_DTS_HD_HRA ||
                     profile == FF_PROFILE_DTS_HD_MA ||
                     profile == FF_PROFILE_UNKNOWN;





        int dts_hd_spdif_channel_count = profile == FF_PROFILE_DTS_HD_HRA ?
                                         2 : 8;
        if (spdif_ctx->use_dts_hd && is_hd) {
            av_dict_set_int(&format_opts, "dtshd_rate",
                            dts_hd_spdif_channel_count * 96000, 0);
            sample_format = AF_FORMAT_S_DTSHD;
            samplerate = 192000;
            num_channels = dts_hd_spdif_channel_count;
        } else {
            sample_format = AF_FORMAT_S_DTS;
            samplerate = 48000;
            num_channels = 2;
        }
        break;
    }
    case 130:
        sample_format = AF_FORMAT_S_EAC3;
        samplerate = 192000;
        num_channels = 2;
        break;
    case 129:
        sample_format = AF_FORMAT_S_MP3;
        samplerate = 48000;
        num_channels = 2;
        break;
    case 128:
        sample_format = AF_FORMAT_S_TRUEHD;
        samplerate = 192000;
        num_channels = 8;
        break;
    default:
        abort();
    }

    struct mp_chmap chmap;
    mp_chmap_from_channels(&chmap, num_channels);
    mp_aframe_set_chmap(spdif_ctx->fmt, &chmap);
    mp_aframe_set_format(spdif_ctx->fmt, sample_format);
    mp_aframe_set_rate(spdif_ctx->fmt, samplerate);

    spdif_ctx->sstride = mp_aframe_get_sstride(spdif_ctx->fmt);

    if (avformat_write_header(lavf_ctx, &format_opts) < 0) {
        MP_FATAL(da, "libavformat spdif initialization failed.\n");
        av_dict_free(&format_opts);
        goto fail;
    }
    av_dict_free(&format_opts);

    spdif_ctx->need_close = 1;

    return 0;

fail:
    destroy(da);
    mp_filter_internal_mark_failed(da);
    return -1;
}
