
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; } ;
typedef TYPE_1__ AVCodec ;


 TYPE_1__* avcodec_find_encoder (int) ;

const char *ff_codec_name_from_id(int codec_id)
{
 AVCodec *codec = avcodec_find_encoder(codec_id);
 if (codec != ((void*)0))
  return codec->name;
 else
  return ((void*)0);
}
