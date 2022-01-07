
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int no_encoding; } ;
typedef TYPE_1__ mbfl_encoding ;
typedef enum mbfl_no_encoding { ____Placeholder_mbfl_no_encoding } mbfl_no_encoding ;


 TYPE_1__** mbfl_encoding_ptr_list ;

const mbfl_encoding *
mbfl_no2encoding(enum mbfl_no_encoding no_encoding)
{
 const mbfl_encoding *encoding;
 int i;

 i = 0;
 while ((encoding = mbfl_encoding_ptr_list[i++]) != ((void*)0)){
  if (encoding->no_encoding == no_encoding) {
   return encoding;
  }
 }

 return ((void*)0);
}
