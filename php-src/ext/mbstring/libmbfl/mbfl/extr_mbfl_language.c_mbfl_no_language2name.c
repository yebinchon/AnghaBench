
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; } ;
typedef TYPE_1__ mbfl_language ;
typedef enum mbfl_no_language { ____Placeholder_mbfl_no_language } mbfl_no_language ;


 TYPE_1__* mbfl_no2language (int) ;

const char *
mbfl_no_language2name(enum mbfl_no_language no_language)
{
 const mbfl_language *language;

 language = mbfl_no2language(no_language);
 if (language == ((void*)0)) {
  return "";
 } else {
  return language->name;
 }
}
