
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool
string_matches_pattern(const char *str, const char *pattern)
{
 while (*str && *pattern)
 {
  if (*pattern == '.' && pattern[1] == '*')
  {
   pattern += 2;

   if (*pattern == '\0')
    return 1;





   while (*str)
   {




    if (*str == *pattern || *pattern == '.')
    {
     if (string_matches_pattern(str, pattern))
      return 1;
    }

    str++;
   }




   return 0;
  }
  else if (*pattern != '.' && *str != *pattern)
  {




   return 0;
  }

  str++;
  pattern++;
 }

 if (*pattern == '\0')
  return 1;


 while (*pattern == '.' && pattern[1] == '*')
  pattern += 2;
 if (*pattern == '\0')
  return 1;

 return 0;
}
