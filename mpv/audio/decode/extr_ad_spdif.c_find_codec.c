
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ AV_CODEC_ID_NONE ;
 scalar_t__* codecs ;
 char* mp_codec_from_av_codec_id (scalar_t__) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static bool find_codec(const char *name)
{
    for (int n = 0; codecs[n] != AV_CODEC_ID_NONE; n++) {
        const char *format = mp_codec_from_av_codec_id(codecs[n]);
        if (format && name && strcmp(format, name) == 0)
            return 1;
    }
    return 0;
}
