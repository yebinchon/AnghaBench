
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {char const* p; int len; } ;


 int * strchr (char const*,unsigned char) ;

const char *mg_skip(const char *s, const char *end, const char *delims,
                    struct mg_str *v) {
  v->p = s;
  while (s < end && strchr(delims, *(unsigned char *) s) == ((void*)0)) s++;
  v->len = s - v->p;
  while (s < end && strchr(delims, *(unsigned char *) s) != ((void*)0)) s++;
  return s;
}
