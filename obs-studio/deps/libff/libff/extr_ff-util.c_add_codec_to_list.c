
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ff_format_desc {int codec_tags; } ;
struct ff_codec_desc {int id; int alias; struct ff_codec_desc* next; int type; int base_name; int long_name; int name; } ;
typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_4__ {int id; int type; int name; int long_name; } ;
typedef TYPE_1__ AVCodec ;




 int FF_CODEC_AUDIO ;
 int FF_CODEC_UNKNOWN ;
 int FF_CODEC_VIDEO ;
 unsigned int av_codec_get_tag (int ,int) ;
 int av_codec_is_encoder (TYPE_1__ const*) ;
 struct ff_codec_desc* av_mallocz (int) ;
 void* avcodec_find_encoder (int) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void add_codec_to_list(const struct ff_format_desc *format_desc,
                              struct ff_codec_desc **first,
                              struct ff_codec_desc **current, enum AVCodecID id,
                              const AVCodec *codec, bool ignore_compatability)
{
 if (codec == ((void*)0))
  codec = avcodec_find_encoder(id);


 if (codec == ((void*)0))
  return;


 if (!av_codec_is_encoder(codec))
  return;

 if (!ignore_compatability) {

  unsigned int tag =
          av_codec_get_tag(format_desc->codec_tags, codec->id);
  if (tag == 0)
   return;
 }

 struct ff_codec_desc *d = av_mallocz(sizeof(struct ff_codec_desc));

 d->name = codec->name;
 d->long_name = codec->long_name;
 d->id = codec->id;
 AVCodec *base_codec = avcodec_find_encoder(codec->id);
 if (strcmp(base_codec->name, codec->name) != 0) {
  d->alias = 1;
  d->base_name = base_codec->name;
 }

 switch (codec->type) {
 case 129:
  d->type = FF_CODEC_AUDIO;
  break;
 case 128:
  d->type = FF_CODEC_VIDEO;
  break;
 default:
  d->type = FF_CODEC_UNKNOWN;
 }

 if (*current != ((void*)0))
  (*current)->next = d;
 else
  *first = d;

 *current = d;
}
