
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_HIGHBIT_SET (unsigned char const) ;
 int * strchr (char*,unsigned char const) ;

__attribute__((used)) static bool
valid_variable_name(const char *name)
{
 const unsigned char *ptr = (const unsigned char *) name;


 if (*ptr == '\0')
  return 0;

 while (*ptr)
 {
  if (IS_HIGHBIT_SET(*ptr) ||
   strchr("ABCDEFGHIJKLMNOPQRSTUVWXYZ" "abcdefghijklmnopqrstuvwxyz"
       "_0123456789", *ptr) != ((void*)0))
   ptr++;
  else
   return 0;
 }

 return 1;
}
