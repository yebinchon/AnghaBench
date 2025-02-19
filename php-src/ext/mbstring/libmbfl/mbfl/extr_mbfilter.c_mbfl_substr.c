
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct collector_substr_data {size_t start; size_t stop; scalar_t__ output; TYPE_3__* next_filter; } ;
struct TYPE_18__ {size_t len; unsigned char* val; TYPE_2__* encoding; int no_language; } ;
typedef TYPE_1__ mbfl_string ;
typedef struct collector_substr_data mbfl_memory_device ;
struct TYPE_19__ {int flag; unsigned char* mblen_table; } ;
typedef TYPE_2__ mbfl_encoding ;
struct TYPE_20__ {scalar_t__ (* filter_function ) (int ,TYPE_3__*) ;} ;
typedef TYPE_3__ mbfl_convert_filter ;


 int MBFL_ENCTYPE_SBCS ;
 int MBFL_ENCTYPE_WCS2BE ;
 int MBFL_ENCTYPE_WCS2LE ;
 int MBFL_ENCTYPE_WCS4BE ;
 int MBFL_ENCTYPE_WCS4LE ;
 size_t MBFL_SUBSTR_UNTIL_END ;
 int collector_substr ;
 int mbfl_convert_filter_delete (TYPE_3__*) ;
 int mbfl_convert_filter_flush (TYPE_3__*) ;
 TYPE_3__* mbfl_convert_filter_new (TYPE_2__*,TYPE_2__*,int ,int ,struct collector_substr_data*) ;
 TYPE_2__ mbfl_encoding_wchar ;
 scalar_t__ mbfl_malloc (size_t) ;
 int mbfl_memory_device_init (struct collector_substr_data*,size_t,int ) ;
 int mbfl_memory_device_output ;
 TYPE_1__* mbfl_memory_device_result (struct collector_substr_data*,TYPE_1__*) ;
 int mbfl_string_init (TYPE_1__*) ;
 size_t mbfl_strlen (TYPE_1__*) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 scalar_t__ stub1 (int ,TYPE_3__*) ;

mbfl_string *
mbfl_substr(
    mbfl_string *string,
    mbfl_string *result,
    size_t from,
    size_t length)
{
 const mbfl_encoding *encoding = string->encoding;
 size_t n, k, len, start, end;
 unsigned m;
 unsigned char *p, *w;

 mbfl_string_init(result);
 result->no_language = string->no_language;
 result->encoding = string->encoding;

 if ((encoding->flag & (MBFL_ENCTYPE_SBCS | MBFL_ENCTYPE_WCS2BE | MBFL_ENCTYPE_WCS2LE | MBFL_ENCTYPE_WCS4BE | MBFL_ENCTYPE_WCS4LE)) ||
    encoding->mblen_table != ((void*)0)) {
  len = string->len;
  if (encoding->flag & MBFL_ENCTYPE_SBCS) {
   start = from;
  } else if (encoding->flag & (MBFL_ENCTYPE_WCS2BE | MBFL_ENCTYPE_WCS2LE)) {
   start = from*2;
  } else if (encoding->flag & (MBFL_ENCTYPE_WCS4BE | MBFL_ENCTYPE_WCS4LE)) {
   start = from*4;
  } else {
   const unsigned char *mbtab = encoding->mblen_table;
   start = 0;
   n = 0;
   k = 0;
   p = string->val;

   while (k <= from) {
    start = n;
    if (n >= len) {
     break;
    }
    m = mbtab[*p];
    n += m;
    p += m;
    k++;
   }
  }

  if (length == MBFL_SUBSTR_UNTIL_END) {
   end = len;
  } else if (encoding->flag & MBFL_ENCTYPE_SBCS) {
   end = start + length;
  } else if (encoding->flag & (MBFL_ENCTYPE_WCS2BE | MBFL_ENCTYPE_WCS2LE)) {
   end = start + length*2;
  } else if (encoding->flag & (MBFL_ENCTYPE_WCS4BE | MBFL_ENCTYPE_WCS4LE)) {
   end = start + length*4;
  } else {
   const unsigned char *mbtab = encoding->mblen_table;
   end = start;
   n = start;
   k = 0;
   p = string->val + start;

   while (k <= length) {
    end = n;
    if (n >= len) {
     break;
    }
    m = mbtab[*p];
    n += m;
    p += m;
    k++;
   }
  }

  if (start > len) {
   start = len;
  }
  if (end > len) {
   end = len;
  }
  if (start > end) {
   start = end;
  }


  n = end - start;
  result->len = 0;
  result->val = w = (unsigned char*)mbfl_malloc(n + 1);
  if (w != ((void*)0)) {
   result->len = n;
   memcpy(w, string->val + start, n);
   w[n] = '\0';
  } else {
   result = ((void*)0);
  }
 } else {
  mbfl_memory_device device;
  struct collector_substr_data pc;
  mbfl_convert_filter *decoder;
  mbfl_convert_filter *encoder;

  if (length == MBFL_SUBSTR_UNTIL_END) {
   length = mbfl_strlen(string) - from;
  }

  mbfl_memory_device_init(&device, length + 1, 0);
  mbfl_string_init(result);
  result->no_language = string->no_language;
  result->encoding = string->encoding;

  decoder = mbfl_convert_filter_new(
      &mbfl_encoding_wchar,
      string->encoding,
      mbfl_memory_device_output, 0, &device);

  encoder = mbfl_convert_filter_new(
      string->encoding,
      &mbfl_encoding_wchar,
      collector_substr, 0, &pc);
  if (decoder == ((void*)0) || encoder == ((void*)0)) {
   mbfl_convert_filter_delete(encoder);
   mbfl_convert_filter_delete(decoder);
   return ((void*)0);
  }
  pc.next_filter = decoder;
  pc.start = from;
  pc.stop = from + length;
  pc.output = 0;


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
  mbfl_convert_filter_flush(decoder);
  result = mbfl_memory_device_result(&device, result);
  mbfl_convert_filter_delete(encoder);
  mbfl_convert_filter_delete(decoder);
 }

 return result;
}
