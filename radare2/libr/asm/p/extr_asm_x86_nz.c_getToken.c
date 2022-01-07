
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x86newTokenType ;
typedef int ut8 ;


 int TT_EOF ;
 int TT_NUMBER ;
 int TT_SPECIAL ;
 int TT_WORD ;
 scalar_t__ isalnum (int ) ;
 scalar_t__ isalpha (int ) ;
 scalar_t__ isdigit (int ) ;
 scalar_t__ isspace (int ) ;
 size_t strlen (char const*) ;

__attribute__((used)) static x86newTokenType getToken(const char *str, size_t *begin, size_t *end) {
 if (*begin > strlen (str)) {
  return TT_EOF;
 }

 while (begin && str[*begin] && isspace ((ut8)str[*begin])) {
  ++(*begin);
 }

 if (!str[*begin]) {
  *end = *begin;
  return TT_EOF;
 }
 if (isalpha ((ut8)str[*begin])) {
  *end = *begin;
  while (end && str[*end] && isalnum ((ut8)str[*end])) {
   ++(*end);
  }
  return TT_WORD;
 }
 if (isdigit ((ut8)str[*begin])) {
  *end = *begin;
  while (end && isalnum ((ut8)str[*end])) {
   ++(*end);
  }
  return TT_NUMBER;
 } else {
  *end = *begin + 1;
  return TT_SPECIAL;
 }
}
