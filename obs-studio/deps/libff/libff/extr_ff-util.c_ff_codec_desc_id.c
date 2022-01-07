
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_codec_desc {int id; } ;


 int AV_CODEC_ID_NONE ;

int ff_codec_desc_id(const struct ff_codec_desc *codec_desc)
{
 if (codec_desc != ((void*)0))
  return codec_desc->id;
 else
  return AV_CODEC_ID_NONE;
}
