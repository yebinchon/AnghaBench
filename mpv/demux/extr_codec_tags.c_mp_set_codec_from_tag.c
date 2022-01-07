
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_codec_params {scalar_t__ type; scalar_t__ bits_per_coded_sample; int codec_tag; int codec; } ;


 scalar_t__ STREAM_AUDIO ;
 int lookup_tag (scalar_t__,int ) ;
 int map_audio_pcm_tag (struct mp_codec_params*) ;

void mp_set_codec_from_tag(struct mp_codec_params *c)
{
    c->codec = lookup_tag(c->type, c->codec_tag);

    if (c->type == STREAM_AUDIO && c->bits_per_coded_sample)
        map_audio_pcm_tag(c);
}
