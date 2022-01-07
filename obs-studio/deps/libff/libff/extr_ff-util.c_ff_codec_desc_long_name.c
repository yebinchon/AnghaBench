
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_codec_desc {char const* long_name; } ;



const char *ff_codec_desc_long_name(const struct ff_codec_desc *codec_desc)
{
 if (codec_desc != ((void*)0))
  return codec_desc->long_name;
 else
  return ((void*)0);
}
