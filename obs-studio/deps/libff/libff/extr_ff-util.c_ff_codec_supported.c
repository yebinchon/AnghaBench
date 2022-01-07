
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ff_format_desc {int dummy; } ;
typedef struct ff_codec_desc const ff_codec_desc ;
struct TYPE_3__ {int id; } ;
typedef TYPE_1__ AVCodecDescriptor ;


 int av_free (void*) ;
 int get_codecs (TYPE_1__ const***,unsigned int*) ;
 int get_codecs_for_id (struct ff_format_desc const*,struct ff_codec_desc const**,struct ff_codec_desc const**,int ,int) ;

const struct ff_codec_desc *
ff_codec_supported(const struct ff_format_desc *format_desc,
                   bool ignore_compatability)
{
 const AVCodecDescriptor **codecs;
 unsigned int size;
 unsigned int i;
 struct ff_codec_desc *current = ((void*)0);
 struct ff_codec_desc *first = ((void*)0);

 if (!get_codecs(&codecs, &size))
  return ((void*)0);

 for (i = 0; i < size; i++) {
  const AVCodecDescriptor *codec = codecs[i];
  get_codecs_for_id(format_desc, &first, &current, codec->id,
                    ignore_compatability);
 }

 av_free((void *)codecs);

 return first;
}
