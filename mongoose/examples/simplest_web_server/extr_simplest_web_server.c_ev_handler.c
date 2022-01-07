
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;
struct http_message {int dummy; } ;


 int MG_EV_HTTP_REQUEST ;
 int mg_serve_http (struct mg_connection*,struct http_message*,int ) ;
 int s_http_server_opts ;

__attribute__((used)) static void ev_handler(struct mg_connection *nc, int ev, void *p) {
  if (ev == MG_EV_HTTP_REQUEST) {
    mg_serve_http(nc, (struct http_message *) p, s_http_server_opts);
  }
}
