
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_format_desc {struct ff_format_desc* next; } ;


 int av_free (void*) ;

void ff_format_desc_free(const struct ff_format_desc *format_desc)
{
 const struct ff_format_desc *desc = format_desc;
 while (desc != ((void*)0)) {
  const struct ff_format_desc *next = desc->next;
  av_free((void *)desc);
  desc = next;
 }
}
