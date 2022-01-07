
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_format_desc {int video_codec; int audio_codec; } ;
typedef enum ff_codec_type { ____Placeholder_ff_codec_type } ff_codec_type ;




 char const* get_encoder_name (struct ff_format_desc const*,int ) ;

const char *
ff_format_desc_get_default_name(const struct ff_format_desc *format_desc,
                                enum ff_codec_type codec_type)
{
 switch (codec_type) {
 case 129:
  return get_encoder_name(format_desc, format_desc->audio_codec);
 case 128:
  return get_encoder_name(format_desc, format_desc->video_codec);
 default:
  return ((void*)0);
 }
}
