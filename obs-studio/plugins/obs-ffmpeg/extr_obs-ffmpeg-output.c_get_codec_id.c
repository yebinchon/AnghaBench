
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_3__ {int id; } ;
typedef TYPE_1__ AVCodec ;


 int AV_CODEC_ID_NONE ;
 TYPE_1__* avcodec_find_encoder_by_name (char const*) ;

__attribute__((used)) static enum AVCodecID get_codec_id(const char *name, int id)
{
 AVCodec *codec;

 if (id != 0)
  return (enum AVCodecID)id;

 if (!name || !*name)
  return AV_CODEC_ID_NONE;

 codec = avcodec_find_encoder_by_name(name);
 if (!codec)
  return AV_CODEC_ID_NONE;

 return codec->id;
}
