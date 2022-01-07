
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_codec_desc {int type; } ;
typedef enum ff_codec_type { ____Placeholder_ff_codec_type } ff_codec_type ;


 int FF_CODEC_UNKNOWN ;

enum ff_codec_type ff_codec_desc_type(const struct ff_codec_desc *codec_desc)
{
 if (codec_desc != ((void*)0))
  return codec_desc->type;
 else
  return FF_CODEC_UNKNOWN;
}
