
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
struct mp_chmap {scalar_t__ num; } ;
struct mp_codec_params {int codec_tag; int extradata_size; unsigned char* extradata; int bits_per_coded_sample; int type; int codec; struct mp_chmap channels; } ;


 void* AV_RL32 (unsigned char*) ;
 scalar_t__ guid_ext_base ;
 int lookup_tag (int ,int) ;
 scalar_t__ memcmp (unsigned char*,scalar_t__,int) ;
 int mp_chmap_from_waveext (struct mp_chmap*,void*) ;
 int mp_set_pcm_codec (struct mp_codec_params*,int,int,int,int) ;

__attribute__((used)) static void map_audio_pcm_tag(struct mp_codec_params *c)
{

    if (c->codec_tag == 0xfffe && c->extradata_size >= 22) {

        uint64_t chmask = AV_RL32(c->extradata + 2);
        struct mp_chmap chmap;
        mp_chmap_from_waveext(&chmap, chmask);
        if (c->channels.num == chmap.num)
            c->channels = chmap;


        unsigned char *subformat = c->extradata + 6;
        if (memcmp(subformat + 4, guid_ext_base + 4, 12) == 0) {
            c->codec_tag = AV_RL32(subformat);
            c->codec = lookup_tag(c->type, c->codec_tag);
        }


        c->extradata += 22;
        c->extradata_size -= 22;
    }

    int bits = c->bits_per_coded_sample;
    int bytes = (bits + 7) / 8;
    switch (c->codec_tag) {
    case 0x0:
    case 0x1:
        if (bytes >= 1 && bytes <= 4)
            mp_set_pcm_codec(c, bytes > 1, 0, bytes * 8, 0);
        break;
    case 0x3:
        mp_set_pcm_codec(c, 1, 1, bits == 64 ? 64 : 32, 0);
        break;
    }
}
