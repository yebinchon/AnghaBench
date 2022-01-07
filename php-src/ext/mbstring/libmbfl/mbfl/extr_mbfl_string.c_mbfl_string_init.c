
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* val; scalar_t__ len; int * encoding; int no_language; } ;
typedef TYPE_1__ mbfl_string ;


 int mbfl_encoding_pass ;
 int mbfl_no_language_uni ;

void
mbfl_string_init(mbfl_string *string)
{
 if (string) {
  string->no_language = mbfl_no_language_uni;
  string->encoding = &mbfl_encoding_pass;
  string->val = (unsigned char*)((void*)0);
  string->len = 0;
 }
}
