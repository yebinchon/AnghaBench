
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {scalar_t__ len; int * p; } ;
struct http_message {struct mg_str* header_values; struct mg_str* header_names; } ;


 int mg_ncasecmp (int *,char const*,size_t) ;
 size_t strlen (char const*) ;

struct mg_str *mg_get_http_header(struct http_message *hm, const char *name) {
  size_t i, len = strlen(name);

  for (i = 0; hm->header_names[i].len > 0; i++) {
    struct mg_str *h = &hm->header_names[i], *v = &hm->header_values[i];
    if (h->p != ((void*)0) && h->len == len && !mg_ncasecmp(h->p, name, len))
      return v;
  }

  return ((void*)0);
}
