
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {int len; } ;
struct mg_serve_http_opts {char* url_rewrites; } ;
struct mg_connection {int dummy; } ;
struct http_message {struct mg_str uri; } ;


 struct mg_str MG_MK_STR (char*) ;
 int mg_http_reverse_proxy (struct mg_connection*,struct http_message*,struct mg_str,struct mg_str) ;
 char* mg_next_comma_list_entry (char const*,struct mg_str*,struct mg_str*) ;
 scalar_t__ mg_strncmp (struct mg_str,struct mg_str,int ) ;

__attribute__((used)) static int mg_http_handle_forwarding(struct mg_connection *nc,
                                     struct http_message *hm,
                                     const struct mg_serve_http_opts *opts) {
  const char *rewrites = opts->url_rewrites;
  struct mg_str a, b;
  struct mg_str p1 = MG_MK_STR("http://"), p2 = MG_MK_STR("https://");

  while ((rewrites = mg_next_comma_list_entry(rewrites, &a, &b)) != ((void*)0)) {
    if (mg_strncmp(a, hm->uri, a.len) == 0) {
      if (mg_strncmp(b, p1, p1.len) == 0 || mg_strncmp(b, p2, p2.len) == 0) {
        mg_http_reverse_proxy(nc, hm, a, b);
        return 1;
      }
    }
  }

  return 0;
}
