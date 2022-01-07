
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {size_t len; unsigned char* val; int * encoding; int no_language; } ;
typedef TYPE_1__ mbfl_string ;
struct TYPE_22__ {scalar_t__ (* filter_function ) (int ,TYPE_2__*) ;TYPE_3__* opaque; scalar_t__ filter_flush; } ;
typedef TYPE_2__ mbfl_memory_device ;
struct TYPE_23__ {int mode; } ;
typedef TYPE_3__ mbfl_filt_tl_jisx0201_jisx0208_param ;
typedef TYPE_2__ mbfl_convert_filter ;


 int mbfl_convert_filter_delete (TYPE_2__*) ;
 int mbfl_convert_filter_flush (TYPE_2__*) ;
 TYPE_2__* mbfl_convert_filter_new (int *,int *,int (*) (int,void*),int (*) (void*),TYPE_2__*) ;
 TYPE_2__* mbfl_convert_filter_new2 (int *,int (*) (int,void*),int (*) (void*),TYPE_2__*) ;
 int mbfl_encoding_wchar ;
 int mbfl_free (TYPE_3__*) ;
 scalar_t__ mbfl_malloc (int) ;
 int mbfl_memory_device_init (TYPE_2__*,size_t,int ) ;
 int mbfl_memory_device_output (int,void*) ;
 TYPE_1__* mbfl_memory_device_result (TYPE_2__*,TYPE_1__*) ;
 int mbfl_string_init (TYPE_1__*) ;
 scalar_t__ stub1 (int ,TYPE_2__*) ;
 int vtbl_tl_jisx0201_jisx0208 ;

mbfl_string *
mbfl_ja_jp_hantozen(
    mbfl_string *string,
    mbfl_string *result,
    int mode)
{
 size_t n;
 unsigned char *p;
 mbfl_memory_device device;
 mbfl_convert_filter *decoder = ((void*)0);
 mbfl_convert_filter *encoder = ((void*)0);
 mbfl_convert_filter *tl_filter = ((void*)0);
 mbfl_convert_filter *next_filter = ((void*)0);
 mbfl_filt_tl_jisx0201_jisx0208_param *param = ((void*)0);

 mbfl_memory_device_init(&device, string->len, 0);
 mbfl_string_init(result);

 result->no_language = string->no_language;
 result->encoding = string->encoding;

 decoder = mbfl_convert_filter_new(
  &mbfl_encoding_wchar,
  string->encoding,
  mbfl_memory_device_output, 0, &device);
 if (decoder == ((void*)0)) {
  goto out;
 }
 next_filter = decoder;

 param =
  (mbfl_filt_tl_jisx0201_jisx0208_param *)mbfl_malloc(sizeof(mbfl_filt_tl_jisx0201_jisx0208_param));
 if (param == ((void*)0)) {
  goto out;
 }

 param->mode = mode;

 tl_filter = mbfl_convert_filter_new2(
  &vtbl_tl_jisx0201_jisx0208,
  (int(*)(int, void*))next_filter->filter_function,
  (int(*)(void*))next_filter->filter_flush,
  next_filter);
 if (tl_filter == ((void*)0)) {
  mbfl_free(param);
  goto out;
 }

 tl_filter->opaque = param;
 next_filter = tl_filter;

 encoder = mbfl_convert_filter_new(
  string->encoding,
  &mbfl_encoding_wchar,
  (int(*)(int, void*))next_filter->filter_function,
  (int(*)(void*))next_filter->filter_flush,
  next_filter);
 if (encoder == ((void*)0)) {
  goto out;
 }


 p = string->val;
 n = string->len;
 if (p != ((void*)0)) {
  while (n > 0) {
   if ((*encoder->filter_function)(*p++, encoder) < 0) {
    break;
   }
   n--;
  }
 }

 mbfl_convert_filter_flush(encoder);
 result = mbfl_memory_device_result(&device, result);
out:
 if (tl_filter != ((void*)0)) {
  if (tl_filter->opaque != ((void*)0)) {
   mbfl_free(tl_filter->opaque);
  }
  mbfl_convert_filter_delete(tl_filter);
 }

 if (decoder != ((void*)0)) {
  mbfl_convert_filter_delete(decoder);
 }

 if (encoder != ((void*)0)) {
  mbfl_convert_filter_delete(encoder);
 }

 return result;
}
