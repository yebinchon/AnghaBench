
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {int dummy; } ;
struct http_message {int dummy; } ;


 struct mg_str* mg_get_http_header (struct http_message*,char*) ;
 int mg_parse_http_basic_auth (struct mg_str*,char*,size_t,char*,size_t) ;

int mg_get_http_basic_auth(struct http_message *hm, char *user, size_t user_len,
                           char *pass, size_t pass_len) {
  struct mg_str *hdr = mg_get_http_header(hm, "Authorization");
  if (hdr == ((void*)0)) return -1;
  return mg_parse_http_basic_auth(hdr, user, user_len, pass, pass_len);
}
