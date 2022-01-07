
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {scalar_t__ len; int p; } ;


 struct mg_str MG_MK_STR_N (int ,scalar_t__) ;
 scalar_t__ mg_strcmp (struct mg_str const,struct mg_str) ;

int mg_str_starts_with(struct mg_str s, struct mg_str prefix) {
  const struct mg_str sp = MG_MK_STR_N(s.p, prefix.len);
  if (s.len < prefix.len) return 0;
  return (mg_strcmp(sp, prefix) == 0);
}
