
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int no_language; } ;
typedef TYPE_1__ mbfl_language ;
typedef enum mbfl_no_language { ____Placeholder_mbfl_no_language } mbfl_no_language ;


 TYPE_1__** mbfl_language_ptr_table ;

const mbfl_language *
mbfl_no2language(enum mbfl_no_language no_language)
{
 const mbfl_language *language;
 int i;

 i = 0;
 while ((language = mbfl_language_ptr_table[i++]) != ((void*)0)){
  if (language->no_language == no_language) {
   return language;
  }
 }

 return ((void*)0);
}
