
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_http_proto_data {struct mg_http_endpoint* endpoints; } ;
struct mg_http_endpoint_opts {int user_data; int * auth_file; int * auth_domain; } ;
struct mg_http_endpoint {struct mg_http_endpoint* next; int user_data; int handler; void* auth_file; void* auth_domain; int uri_pattern; } ;
struct mg_connection {int dummy; } ;
typedef int mg_event_handler_t ;


 scalar_t__ MG_CALLOC (int,int) ;
 struct mg_http_proto_data* mg_http_create_proto_data (struct mg_connection*) ;
 struct mg_http_proto_data* mg_http_get_proto_data (struct mg_connection*) ;
 int mg_mk_str (char const*) ;
 int mg_strdup (int ) ;
 void* strdup (int *) ;

void mg_register_http_endpoint_opt(struct mg_connection *nc,
                                   const char *uri_path,
                                   mg_event_handler_t handler,
                                   struct mg_http_endpoint_opts opts) {
  struct mg_http_proto_data *pd = ((void*)0);
  struct mg_http_endpoint *new_ep = ((void*)0);

  if (nc == ((void*)0)) return;
  new_ep = (struct mg_http_endpoint *) MG_CALLOC(1, sizeof(*new_ep));
  if (new_ep == ((void*)0)) return;

  pd = mg_http_get_proto_data(nc);
  if (pd == ((void*)0)) pd = mg_http_create_proto_data(nc);
  new_ep->uri_pattern = mg_strdup(mg_mk_str(uri_path));
  if (opts.auth_domain != ((void*)0) && opts.auth_file != ((void*)0)) {
    new_ep->auth_domain = strdup(opts.auth_domain);
    new_ep->auth_file = strdup(opts.auth_file);
  }
  new_ep->handler = handler;



  new_ep->next = pd->endpoints;
  pd->endpoints = new_ep;
}
