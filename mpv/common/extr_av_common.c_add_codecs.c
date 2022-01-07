
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mp_decoder_list {int dummy; } ;
typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_4__ {int type; int long_name; int name; int id; } ;
typedef TYPE_1__ AVCodec ;


 int AVMEDIA_TYPE_UNKNOWN ;
 int av_codec_is_decoder (TYPE_1__ const*) ;
 TYPE_1__* av_codec_iterate (void**) ;
 int mp_add_decoder (struct mp_decoder_list*,int ,int ,int ) ;
 int mp_codec_from_av_codec_id (int ) ;

__attribute__((used)) static void add_codecs(struct mp_decoder_list *list, enum AVMediaType type,
                       bool decoders)
{
    void *iter = ((void*)0);
    for (;;) {
        const AVCodec *cur = av_codec_iterate(&iter);
        if (!cur)
            break;
        if (av_codec_is_decoder(cur) == decoders &&
            (type == AVMEDIA_TYPE_UNKNOWN || cur->type == type))
        {
            mp_add_decoder(list, mp_codec_from_av_codec_id(cur->id),
                           cur->name, cur->long_name);
        }
    }
}
