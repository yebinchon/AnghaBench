
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int len; unsigned char* val; int const* encoding; } ;
typedef TYPE_1__ mbfl_string ;
struct TYPE_17__ {scalar_t__ (* filter_function ) (int ,TYPE_2__*) ;int illegal_substchar; int illegal_mode; } ;
typedef TYPE_2__ mbfl_memory_device ;
typedef int mbfl_encoding ;
typedef TYPE_2__ mbfl_convert_filter ;


 int MBFL_OUTPUTFILTER_ILLEGAL_MODE_CHAR ;
 int mbfl_convert_filter_delete (TYPE_2__*) ;
 int mbfl_convert_filter_flush (TYPE_2__*) ;
 int * mbfl_convert_filter_get_vtbl (int const*,int const*) ;
 TYPE_2__* mbfl_convert_filter_new (int const*,int const*,int (*) (int,void*),int *,TYPE_2__*) ;
 int const mbfl_encoding_wchar ;
 int mbfl_memory_device_init (TYPE_2__*,int,int) ;
 int mbfl_memory_device_output (int,void*) ;
 TYPE_1__* mbfl_memory_device_result (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ stub1 (int ,TYPE_2__*) ;

mbfl_string *
mbfl_convert_encoding(
    mbfl_string *string,
    mbfl_string *result,
    const mbfl_encoding *toenc)
{
 size_t n;
 unsigned char *p;
 mbfl_memory_device device;
 mbfl_convert_filter *filter1;
 mbfl_convert_filter *filter2;


 if (toenc == ((void*)0) || string == ((void*)0) || result == ((void*)0)) {
  return ((void*)0);
 }

 filter1 = ((void*)0);
 filter2 = ((void*)0);
 if (mbfl_convert_filter_get_vtbl(string->encoding, toenc) != ((void*)0)) {
  filter1 = mbfl_convert_filter_new(string->encoding, toenc, mbfl_memory_device_output, 0, &device);
 } else {
  filter2 = mbfl_convert_filter_new(&mbfl_encoding_wchar, toenc, mbfl_memory_device_output, 0, &device);
  if (filter2 != ((void*)0)) {
   filter1 = mbfl_convert_filter_new(string->encoding, &mbfl_encoding_wchar, (int (*)(int, void*))filter2->filter_function, ((void*)0), filter2);
   if (filter1 == ((void*)0)) {
    mbfl_convert_filter_delete(filter2);
   }
  }
 }
 if (filter1 == ((void*)0)) {
  return ((void*)0);
 }

 if (filter2 != ((void*)0)) {
  filter2->illegal_mode = MBFL_OUTPUTFILTER_ILLEGAL_MODE_CHAR;
  filter2->illegal_substchar = 0x3f;
 }

 mbfl_memory_device_init(&device, string->len, (string->len >> 2) + 8);


 n = string->len;
 p = string->val;
 if (p != ((void*)0)) {
  while (n > 0) {
   if ((*filter1->filter_function)(*p++, filter1) < 0) {
    break;
   }
   n--;
  }
 }

 mbfl_convert_filter_flush(filter1);
 mbfl_convert_filter_delete(filter1);
 if (filter2 != ((void*)0)) {
  mbfl_convert_filter_flush(filter2);
  mbfl_convert_filter_delete(filter2);
 }

 return mbfl_memory_device_result(&device, result);
}
