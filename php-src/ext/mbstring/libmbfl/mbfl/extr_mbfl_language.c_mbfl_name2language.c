
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int *** aliases; int * short_name; int * name; } ;
typedef TYPE_1__ mbfl_language ;


 TYPE_1__** mbfl_language_ptr_table ;
 scalar_t__ strcasecmp (int *,char const*) ;

const mbfl_language *
mbfl_name2language(const char *name)
{
 const mbfl_language *language;
 int i, j;

 if (name == ((void*)0)) {
  return ((void*)0);
 }

 i = 0;
 while ((language = mbfl_language_ptr_table[i++]) != ((void*)0)){
  if (strcasecmp(language->name, name) == 0) {
   return language;
  }
 }

 i = 0;
 while ((language = mbfl_language_ptr_table[i++]) != ((void*)0)){
  if (strcasecmp(language->short_name, name) == 0) {
   return language;
  }
 }


 i = 0;
 while ((language = mbfl_language_ptr_table[i++]) != ((void*)0)) {
  if (language->aliases != ((void*)0)) {
   j = 0;
   while ((*language->aliases)[j] != ((void*)0)) {
    if (strcasecmp((*language->aliases)[j], name) == 0) {
     return language;
    }
    j++;
   }
  }
 }

 return ((void*)0);
}
