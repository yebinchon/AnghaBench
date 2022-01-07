
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {int dummy; } ;
struct mg_http_proto_data {struct mg_http_endpoint* endpoints; } ;
struct mg_http_endpoint {struct mg_http_endpoint* next; int uri_pattern; } ;
struct mg_connection {int dummy; } ;


 struct mg_http_proto_data* mg_http_get_proto_data (struct mg_connection*) ;
 int mg_match_prefix_n (int ,struct mg_str) ;

struct mg_http_endpoint *mg_http_get_endpoint_handler(struct mg_connection *nc,
                                                      struct mg_str *uri_path) {
  struct mg_http_proto_data *pd;
  struct mg_http_endpoint *ret = ((void*)0);
  int matched, matched_max = 0;
  struct mg_http_endpoint *ep;

  if (nc == ((void*)0)) return ((void*)0);

  pd = mg_http_get_proto_data(nc);

  if (pd == ((void*)0)) return ((void*)0);

  ep = pd->endpoints;
  while (ep != ((void*)0)) {
    if ((matched = mg_match_prefix_n(ep->uri_pattern, *uri_path)) > 0) {
      if (matched > matched_max) {

        ret = ep;
        matched_max = matched;
      }
    }

    ep = ep->next;
  }

  return ret;
}
