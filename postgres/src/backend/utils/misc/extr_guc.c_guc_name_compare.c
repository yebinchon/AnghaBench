
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
guc_name_compare(const char *namea, const char *nameb)
{





 while (*namea && *nameb)
 {
  char cha = *namea++;
  char chb = *nameb++;

  if (cha >= 'A' && cha <= 'Z')
   cha += 'a' - 'A';
  if (chb >= 'A' && chb <= 'Z')
   chb += 'a' - 'A';
  if (cha != chb)
   return cha - chb;
 }
 if (*namea)
  return 1;
 if (*nameb)
  return -1;
 return 0;
}
