
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ lowerit (char const) ;

__attribute__((used)) static bool
itsabbr(const char *abbr, const char *word)
{
 if (lowerit(*abbr) != lowerit(*word))
  return 0;
 ++word;
 while (*++abbr != '\0')
  do
  {
   if (*word == '\0')
    return 0;
  } while (lowerit(*word++) != lowerit(*abbr));
 return 1;
}
