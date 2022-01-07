
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int no_language; } ;
typedef TYPE_1__ mbfl_language ;
typedef enum mbfl_no_language { ____Placeholder_mbfl_no_language } mbfl_no_language ;


 TYPE_1__* mbfl_name2language (char const*) ;
 int mbfl_no_language_invalid ;

enum mbfl_no_language
mbfl_name2no_language(const char *name)
{
 const mbfl_language *language;

 language = mbfl_name2language(name);
 if (language == ((void*)0)) {
  return mbfl_no_language_invalid;
 } else {
  return language->no_language;
 }
}
