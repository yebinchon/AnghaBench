
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_format_desc {char const* extensions; } ;



const char *ff_format_desc_extensions(const struct ff_format_desc *format_desc)
{
 if (format_desc != ((void*)0))
  return format_desc->extensions;
 else
  return ((void*)0);
}
