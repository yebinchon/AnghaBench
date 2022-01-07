
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {char const* member_0; int len; int member_1; } ;


 int strlen (char const*) ;

struct mg_str mg_mk_str(const char *s) {
  struct mg_str ret = {s, 0};
  if (s != ((void*)0)) ret.len = strlen(s);
  return ret;
}
