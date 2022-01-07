
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;
struct http_message {int dummy; } ;



 int mg_serve_http (struct mg_connection*,struct http_message*,int ) ;
 int s_frontend_server_opts ;

__attribute__((used)) static void frontend_handler(struct mg_connection *nc, int ev, void *ev_data) {
  struct http_message *hm = (struct http_message *) ev_data;
  switch (ev) {
    case 128:
      mg_serve_http(nc, hm, s_frontend_server_opts);
      break;
    default:
      break;
  }
}
