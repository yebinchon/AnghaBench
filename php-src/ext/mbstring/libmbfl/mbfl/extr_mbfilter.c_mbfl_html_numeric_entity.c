
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct collector_htmlnumericentity_data {int* convmap; int mapsize; TYPE_2__* decoder; scalar_t__ digit; scalar_t__ cache; scalar_t__ status; } ;
struct TYPE_12__ {size_t len; unsigned char* val; int * encoding; int no_language; } ;
typedef TYPE_1__ mbfl_string ;
typedef struct collector_htmlnumericentity_data mbfl_memory_device ;
struct TYPE_13__ {scalar_t__ (* filter_function ) (int ,TYPE_2__*) ;} ;
typedef TYPE_2__ mbfl_convert_filter ;


 int collector_decode_htmlnumericentity ;
 int collector_encode_hex_htmlnumericentity ;
 int collector_encode_htmlnumericentity ;
 int mbfl_convert_filter_delete (TYPE_2__*) ;
 int mbfl_convert_filter_flush (TYPE_2__*) ;
 void* mbfl_convert_filter_new (int *,int *,int ,int (*) (void*),struct collector_htmlnumericentity_data*) ;
 int mbfl_encoding_wchar ;
 scalar_t__ mbfl_filt_decode_htmlnumericentity_flush ;
 int mbfl_memory_device_init (struct collector_htmlnumericentity_data*,size_t,int ) ;
 int mbfl_memory_device_output ;
 TYPE_1__* mbfl_memory_device_result (struct collector_htmlnumericentity_data*,TYPE_1__*) ;
 int mbfl_string_init (TYPE_1__*) ;
 scalar_t__ stub1 (int ,TYPE_2__*) ;

mbfl_string *
mbfl_html_numeric_entity(
    mbfl_string *string,
    mbfl_string *result,
    int *convmap,
    int mapsize,
    int type)
{
 struct collector_htmlnumericentity_data pc;
 mbfl_memory_device device;
 mbfl_convert_filter *encoder;
 size_t n;
 unsigned char *p;

 if (string == ((void*)0) || result == ((void*)0)) {
  return ((void*)0);
 }
 mbfl_string_init(result);
 result->no_language = string->no_language;
 result->encoding = string->encoding;
 mbfl_memory_device_init(&device, string->len, 0);


 pc.decoder = mbfl_convert_filter_new(
     &mbfl_encoding_wchar,
     string->encoding,
     mbfl_memory_device_output, 0, &device);

 if (type == 0) {
  encoder = mbfl_convert_filter_new(
      string->encoding,
      &mbfl_encoding_wchar,
      collector_encode_htmlnumericentity, 0, &pc);
 } else if (type == 2) {
  encoder = mbfl_convert_filter_new(
      string->encoding,
      &mbfl_encoding_wchar,
      collector_encode_hex_htmlnumericentity, 0, &pc);
 } else {
  encoder = mbfl_convert_filter_new(
      string->encoding,
      &mbfl_encoding_wchar,
      collector_decode_htmlnumericentity,
   (int (*)(void*))mbfl_filt_decode_htmlnumericentity_flush, &pc);
 }
 if (pc.decoder == ((void*)0) || encoder == ((void*)0)) {
  mbfl_convert_filter_delete(encoder);
  mbfl_convert_filter_delete(pc.decoder);
  return ((void*)0);
 }
 pc.status = 0;
 pc.cache = 0;
 pc.digit = 0;
 pc.convmap = convmap;
 pc.mapsize = mapsize;


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
 mbfl_convert_filter_flush(pc.decoder);
 result = mbfl_memory_device_result(&device, result);
 mbfl_convert_filter_delete(encoder);
 mbfl_convert_filter_delete(pc.decoder);

 return result;
}
