
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* val; scalar_t__ len; } ;
typedef TYPE_1__ mbfl_string ;


 int mbfl_free (unsigned char*) ;

void
mbfl_string_clear(mbfl_string *string)
{
 if (string) {
  if (string->val != (unsigned char*)((void*)0)) {
   mbfl_free(string->val);
  }
  string->val = (unsigned char*)((void*)0);
  string->len = 0;
 }
}
