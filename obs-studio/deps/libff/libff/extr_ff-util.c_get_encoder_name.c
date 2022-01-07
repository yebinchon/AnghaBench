
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ff_format_desc {char const* name; } ;
typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_3__ {char const* name; } ;
typedef TYPE_1__ AVCodec ;


 int AV_CODEC_ID_NONE ;
 TYPE_1__* avcodec_find_encoder (int) ;

__attribute__((used)) static const char *get_encoder_name(const struct ff_format_desc *format_desc,
                                    enum AVCodecID codec_id)
{
 AVCodec *codec = avcodec_find_encoder(codec_id);
 if (codec == ((void*)0) && codec_id == AV_CODEC_ID_NONE)
  return ((void*)0);
 else if (codec == ((void*)0))
  return format_desc->name;
 else
  return codec->name;
}
