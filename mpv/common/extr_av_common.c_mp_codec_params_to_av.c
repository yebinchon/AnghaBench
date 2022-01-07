
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int num; } ;
struct mp_codec_params {TYPE_3__ channels; int block_align; int bitrate; int samplerate; int disp_h; int disp_w; int bits_per_coded_sample; int extradata; scalar_t__ extradata_size; int codec_tag; int codec; int type; int lav_codecpar; } ;
struct TYPE_8__ {int channel_layout; int channels; int block_align; int bit_rate; int sample_rate; int height; int width; int bits_per_coded_sample; scalar_t__ extradata_size; int extradata; int codec_tag; int codec_id; int codec_type; } ;
typedef TYPE_1__ AVCodecParameters ;


 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int av_mallocz (scalar_t__) ;
 TYPE_1__* avcodec_parameters_alloc () ;
 scalar_t__ avcodec_parameters_copy (TYPE_1__*,int ) ;
 int avcodec_parameters_free (TYPE_1__**) ;
 int memcpy (int ,int ,scalar_t__) ;
 int mp_chmap_is_unknown (TYPE_3__*) ;
 int mp_chmap_to_lavc (TYPE_3__*) ;
 int mp_codec_to_av_codec_id (int ) ;
 int mp_to_av_stream_type (int ) ;

AVCodecParameters *mp_codec_params_to_av(struct mp_codec_params *c)
{
    AVCodecParameters *avp = avcodec_parameters_alloc();
    if (!avp)
        return ((void*)0);


    if (c->lav_codecpar) {
        if (avcodec_parameters_copy(avp, c->lav_codecpar) < 0)
            goto error;
        return avp;
    }

    avp->codec_type = mp_to_av_stream_type(c->type);
    avp->codec_id = mp_codec_to_av_codec_id(c->codec);
    avp->codec_tag = c->codec_tag;
    if (c->extradata_size) {
        avp->extradata =
            av_mallocz(c->extradata_size + AV_INPUT_BUFFER_PADDING_SIZE);
        if (!avp->extradata)
            goto error;
        avp->extradata_size = c->extradata_size;
        memcpy(avp->extradata, c->extradata, avp->extradata_size);
    }
    avp->bits_per_coded_sample = c->bits_per_coded_sample;


    avp->width = c->disp_w;
    avp->height = c->disp_h;


    avp->sample_rate = c->samplerate;
    avp->bit_rate = c->bitrate;
    avp->block_align = c->block_align;
    avp->channels = c->channels.num;
    if (!mp_chmap_is_unknown(&c->channels))
        avp->channel_layout = mp_chmap_to_lavc(&c->channels);

    return avp;
error:
    avcodec_parameters_free(&avp);
    return ((void*)0);
}
