
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct mime_header_decoder_data {int dummy; } ;
struct TYPE_8__ {size_t len; unsigned char* val; int const* encoding; int no_language; } ;
typedef TYPE_1__ mbfl_string ;
typedef int mbfl_encoding ;


 int mbfl_string_init (TYPE_1__*) ;
 int mime_header_decoder_collector (int ,struct mime_header_decoder_data*) ;
 int mime_header_decoder_delete (struct mime_header_decoder_data*) ;
 struct mime_header_decoder_data* mime_header_decoder_new (int const*) ;
 TYPE_1__* mime_header_decoder_result (struct mime_header_decoder_data*,TYPE_1__*) ;

mbfl_string *
mbfl_mime_header_decode(
    mbfl_string *string,
    mbfl_string *result,
    const mbfl_encoding *outcode)
{
 size_t n;
 unsigned char *p;
 struct mime_header_decoder_data *pd;

 mbfl_string_init(result);
 result->no_language = string->no_language;
 result->encoding = outcode;

 pd = mime_header_decoder_new(outcode);
 if (pd == ((void*)0)) {
  return ((void*)0);
 }


 n = string->len;
 p = string->val;
 while (n > 0) {
  mime_header_decoder_collector(*p++, pd);
  n--;
 }

 result = mime_header_decoder_result(pd, result);
 mime_header_decoder_delete(pd);

 return result;
}
