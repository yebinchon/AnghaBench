
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 scalar_t__ strcmp (char const*,char const* const) ;

__attribute__((used)) static int16_t findOffset(const char* const* list, const char* key)
{
 const char* const* anchor = list;
 while (*list != ((void*)0)) {
  if (strcmp(key, *list) == 0) {
   return (int16_t)(list - anchor);
  }
  list++;
 }

 return -1;

}
