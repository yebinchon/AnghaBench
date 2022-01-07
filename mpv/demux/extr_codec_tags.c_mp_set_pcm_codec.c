
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_codec_params {int codec; } ;
typedef int codec ;


 int mp_snprintf_cat (char*,int,char*,...) ;
 int talloc_strdup (struct mp_codec_params*,char*) ;

void mp_set_pcm_codec(struct mp_codec_params *c, bool sign, bool is_float,
                      int bits, bool is_be)
{

    char codec[64] = "pcm_";
    if (is_float) {
        mp_snprintf_cat(codec, sizeof(codec), "f");
    } else {
        mp_snprintf_cat(codec, sizeof(codec), sign ? "s" : "u");
    }
    mp_snprintf_cat(codec, sizeof(codec), "%d", bits);
    if (bits != 8)
        mp_snprintf_cat(codec, sizeof(codec), is_be ? "be" : "le");
    c->codec = talloc_strdup(c, codec);
}
