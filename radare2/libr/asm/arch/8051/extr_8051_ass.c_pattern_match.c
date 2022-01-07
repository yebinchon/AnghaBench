
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char const) ;
 scalar_t__ tolower (char const) ;

__attribute__((used)) static bool pattern_match(char const*str, char const*pattern) {
 int si = 0;
 int ti = 0;
 if (!pattern) {
  return 1;
 }

 while (pattern[ti] != '\0') {
  while (isspace (str[si]) && !isspace (pattern[ti])) {
   si += 1;
  }
  if (isspace (pattern[ti])) {
   ti += 1;
   continue;
  }
  if (tolower (pattern[ti]) == tolower (str[si])) {
   si += 1;
   ti += 1;
  }
  else {
   return 0;
  }
 }
 return 1;
}
