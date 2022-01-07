
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int mbfl_encoding ;
struct TYPE_8__ {scalar_t__ filter_flush; scalar_t__ filter_function; } ;
struct TYPE_7__ {TYPE_2__ device; int * filter1; TYPE_2__* filter2; int const* from; int const* to; } ;
typedef TYPE_1__ mbfl_buffer_converter ;


 int mbfl_convert_filter_delete (TYPE_2__*) ;
 int * mbfl_convert_filter_get_vtbl (int const*,int const*) ;
 void* mbfl_convert_filter_new (int const*,int const*,int (*) (int,void*),int (*) (void*),TYPE_2__*) ;
 int const mbfl_encoding_wchar ;
 int mbfl_free (TYPE_1__*) ;
 scalar_t__ mbfl_malloc (int) ;
 int mbfl_memory_device_init (TYPE_2__*,size_t,size_t) ;
 int mbfl_memory_device_output (int,void*) ;

mbfl_buffer_converter *
mbfl_buffer_converter_new(
 const mbfl_encoding *from,
 const mbfl_encoding *to,
    size_t buf_initsz)
{
 mbfl_buffer_converter *convd;


 convd = (mbfl_buffer_converter*)mbfl_malloc(sizeof(mbfl_buffer_converter));
 if (convd == ((void*)0)) {
  return ((void*)0);
 }


 convd->from = from;
 convd->to = to;


 convd->filter1 = ((void*)0);
 convd->filter2 = ((void*)0);
 if (mbfl_convert_filter_get_vtbl(convd->from, convd->to) != ((void*)0)) {
  convd->filter1 = mbfl_convert_filter_new(convd->from, convd->to, mbfl_memory_device_output, ((void*)0), &convd->device);
 } else {
  convd->filter2 = mbfl_convert_filter_new(&mbfl_encoding_wchar, convd->to, mbfl_memory_device_output, ((void*)0), &convd->device);
  if (convd->filter2 != ((void*)0)) {
   convd->filter1 = mbfl_convert_filter_new(convd->from,
     &mbfl_encoding_wchar,
     (int (*)(int, void*))convd->filter2->filter_function,
     (int (*)(void*))convd->filter2->filter_flush,
     convd->filter2);
   if (convd->filter1 == ((void*)0)) {
    mbfl_convert_filter_delete(convd->filter2);
   }
  }
 }
 if (convd->filter1 == ((void*)0)) {
  mbfl_free(convd);
  return ((void*)0);
 }

 mbfl_memory_device_init(&convd->device, buf_initsz, buf_initsz/4);

 return convd;
}
