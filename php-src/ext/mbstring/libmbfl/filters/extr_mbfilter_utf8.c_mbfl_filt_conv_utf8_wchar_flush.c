
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; int cache; int data; int (* flush_function ) (int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int mbfl_filt_put_invalid_char (int,TYPE_1__*) ;
 int stub1 (int ) ;

int mbfl_filt_conv_utf8_wchar_flush(mbfl_convert_filter *filter)
{
 int status, cache;

 status = filter->status;
 cache = filter->cache;

 filter->status = 0;
 filter->cache = 0;

 if (status != 0) {
  CK(mbfl_filt_put_invalid_char(cache, filter));
 }

 if (filter->flush_function != ((void*)0)) {
  (*filter->flush_function)(filter->data);
 }
 return 0;
}
