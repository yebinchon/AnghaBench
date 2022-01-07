
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* val; scalar_t__ len; int const* encoding; int no_language; } ;
typedef TYPE_1__ mbfl_string ;
typedef int mbfl_language_id ;
typedef int mbfl_encoding ;



void
mbfl_string_init_set(mbfl_string *string, mbfl_language_id no_language, const mbfl_encoding *encoding)
{
 if (string) {
  string->no_language = no_language;
  string->encoding = encoding;
  string->val = (unsigned char*)((void*)0);
  string->len = 0;
 }
}
