
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_format_desc {struct ff_format_desc const* next; } ;



const struct ff_format_desc *
ff_format_desc_next(const struct ff_format_desc *format_desc)
{
 if (format_desc != ((void*)0))
  return format_desc->next;
 else
  return ((void*)0);
}
