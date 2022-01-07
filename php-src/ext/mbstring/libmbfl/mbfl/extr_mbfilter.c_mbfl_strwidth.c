
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {size_t len; unsigned char* val; int encoding; } ;
typedef TYPE_1__ mbfl_string ;
struct TYPE_9__ {int (* filter_function ) (int ,TYPE_2__*) ;} ;
typedef TYPE_2__ mbfl_convert_filter ;


 int filter_count_width ;
 int mbfl_convert_filter_delete (TYPE_2__*) ;
 int mbfl_convert_filter_flush (TYPE_2__*) ;
 TYPE_2__* mbfl_convert_filter_new (int ,int *,int ,int ,size_t*) ;
 int mbfl_encoding_wchar ;
 int stub1 (int ,TYPE_2__*) ;

size_t
mbfl_strwidth(mbfl_string *string)
{
 size_t len, n;
 unsigned char *p;
 mbfl_convert_filter *filter;

 len = 0;
 if (string->len > 0 && string->val != ((void*)0)) {

  filter = mbfl_convert_filter_new(
      string->encoding,
      &mbfl_encoding_wchar,
      filter_count_width, 0, &len);
  if (filter == ((void*)0)) {
   mbfl_convert_filter_delete(filter);
   return -1;
  }


  p = string->val;
  n = string->len;
  while (n > 0) {
   (*filter->filter_function)(*p++, filter);
   n--;
  }

  mbfl_convert_filter_flush(filter);
  mbfl_convert_filter_delete(filter);
 }

 return len;
}
