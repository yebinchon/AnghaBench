
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct AVCodecTag {int dummy; } ;


 int AV_CODEC_ID_NONE ;


 int av_codec_get_id (struct AVCodecTag const**,int ) ;
 struct AVCodecTag* avformat_get_mov_audio_tags () ;
 struct AVCodecTag* avformat_get_mov_video_tags () ;
 struct AVCodecTag* avformat_get_riff_audio_tags () ;
 struct AVCodecTag* avformat_get_riff_video_tags () ;
 char const* mp_codec_from_av_codec_id (int) ;

__attribute__((used)) static const char *lookup_tag(int type, uint32_t tag)
{
    const struct AVCodecTag *av_tags[3] = {0};
    switch (type) {
    case 128: {
        av_tags[0] = avformat_get_riff_video_tags();



        break;
    }
    case 129: {
        av_tags[0] = avformat_get_riff_audio_tags();



        break;
    }
    }

    int id = av_codec_get_id(av_tags, tag);
    return id == AV_CODEC_ID_NONE ? ((void*)0) : mp_codec_from_av_codec_id(id);
}
