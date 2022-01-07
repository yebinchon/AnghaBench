
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;
struct http_message {int uri; } ;




 int handle_api_call (struct mg_connection*,struct http_message*) ;
 int mg_serve_http (struct mg_connection*,struct http_message*,int ) ;
 int mg_vcmp (int *,char*) ;
 int s_http_server_opts ;
 int unlink_conns (struct mg_connection*) ;

__attribute__((used)) static void ev_handler(struct mg_connection *nc, int ev, void *ev_data) {
  struct http_message *hm = (struct http_message *) ev_data;

  switch (ev) {
    case 128:
      if (mg_vcmp(&hm->uri, "/upload") == 0) {
        handle_api_call(nc, hm);
      } else {
        mg_serve_http(nc, hm, s_http_server_opts);
      }
      break;
    case 129:
      unlink_conns(nc);
      break;
    default:
      break;
  }
}
