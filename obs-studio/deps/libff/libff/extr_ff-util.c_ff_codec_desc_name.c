
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_codec_desc {char const* name; } ;



const char *ff_codec_desc_name(const struct ff_codec_desc *codec_desc)
{
 if (codec_desc != ((void*)0))
  return codec_desc->name;
 else
  return ((void*)0);
}
