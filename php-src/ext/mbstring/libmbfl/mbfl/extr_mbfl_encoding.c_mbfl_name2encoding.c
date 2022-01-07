
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int *** aliases; int * mime_name; int * name; } ;
typedef TYPE_1__ mbfl_encoding ;


 TYPE_1__** mbfl_encoding_ptr_list ;
 scalar_t__ strcasecmp (int *,char const*) ;

const mbfl_encoding *
mbfl_name2encoding(const char *name)
{
 const mbfl_encoding *encoding;
 int i, j;

 if (name == ((void*)0)) {
  return ((void*)0);
 }

  i = 0;
  while ((encoding = mbfl_encoding_ptr_list[i++]) != ((void*)0)){
  if (strcasecmp(encoding->name, name) == 0) {
   return encoding;
  }
 }


  i = 0;
  while ((encoding = mbfl_encoding_ptr_list[i++]) != ((void*)0)) {
  if (encoding->mime_name != ((void*)0)) {
   if (strcasecmp(encoding->mime_name, name) == 0) {
    return encoding;
   }
  }
 }


  i = 0;
  while ((encoding = mbfl_encoding_ptr_list[i++]) != ((void*)0)) {
  if (encoding->aliases != ((void*)0)) {
    j = 0;
    while ((*encoding->aliases)[j] != ((void*)0)) {
    if (strcasecmp((*encoding->aliases)[j], name) == 0) {
     return encoding;
    }
    j++;
   }
  }
 }

 return ((void*)0);
}
