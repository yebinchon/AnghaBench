
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {char const* member_0; size_t member_1; int len; } ;


 size_t mg_match_prefix_n (struct mg_str const,struct mg_str) ;
 int strlen (char const*) ;

size_t mg_match_prefix(const char *pattern, int pattern_len, const char *str) {
  const struct mg_str pstr = {pattern, (size_t) pattern_len};
  struct mg_str s = {str, 0};
  if (str != ((void*)0)) s.len = strlen(str);
  return mg_match_prefix_n(pstr, s);
}
