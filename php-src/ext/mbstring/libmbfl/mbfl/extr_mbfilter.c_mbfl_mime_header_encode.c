
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct mime_header_encoder_data {int* lwsp; size_t lwsplen; int firstindent; TYPE_2__* conv1_filter; } ;
struct TYPE_9__ {size_t len; unsigned char* val; int * encoding; int no_language; } ;
typedef TYPE_1__ mbfl_string ;
typedef int mbfl_encoding ;
struct TYPE_10__ {int (* filter_function ) (int ,TYPE_2__*) ;} ;


 int mbfl_encoding_ascii ;
 int mbfl_string_init (TYPE_1__*) ;
 int mime_header_encoder_delete (struct mime_header_encoder_data*) ;
 struct mime_header_encoder_data* mime_header_encoder_new (int *,int const*,int const*) ;
 TYPE_1__* mime_header_encoder_result (struct mime_header_encoder_data*,TYPE_1__*) ;
 int stub1 (int ,TYPE_2__*) ;

mbfl_string *
mbfl_mime_header_encode(
    mbfl_string *string,
    mbfl_string *result,
    const mbfl_encoding *outcode,
    const mbfl_encoding *encoding,
    const char *linefeed,
    int indent)
{
 size_t n;
 unsigned char *p;
 struct mime_header_encoder_data *pe;

 mbfl_string_init(result);
 result->no_language = string->no_language;
 result->encoding = &mbfl_encoding_ascii;

 pe = mime_header_encoder_new(string->encoding, outcode, encoding);
 if (pe == ((void*)0)) {
  return ((void*)0);
 }

 if (linefeed != ((void*)0)) {
  n = 0;
  while (*linefeed && n < 8) {
   pe->lwsp[n++] = *linefeed++;
  }
  pe->lwsp[n++] = 0x20;
  pe->lwsp[n] = '\0';
  pe->lwsplen = n;
 }
 if (indent > 0 && indent < 74) {
  pe->firstindent = indent;
 }

 n = string->len;
 p = string->val;
 while (n > 0) {
  (*pe->conv1_filter->filter_function)(*p++, pe->conv1_filter);
  n--;
 }

 result = mime_header_encoder_result(pe, result);
 mime_header_encoder_delete(pe);

 return result;
}
