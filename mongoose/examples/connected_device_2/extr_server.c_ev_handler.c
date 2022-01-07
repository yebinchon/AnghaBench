
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;
struct http_message {int uri; } ;




 int handle_save (struct mg_connection*,struct http_message*) ;
 int handle_ssi_call (struct mg_connection*,void*) ;
 int mg_serve_http (struct mg_connection*,struct http_message*,int ) ;
 int mg_vcmp (int *,char*) ;
 int s_http_server_opts ;

__attribute__((used)) static void ev_handler(struct mg_connection *nc, int ev, void *ev_data) {
  struct http_message *hm = (struct http_message *) ev_data;

  switch (ev) {
    case 129:
      if (mg_vcmp(&hm->uri, "/save") == 0) {
        handle_save(nc, hm);
      } else {
        mg_serve_http(nc, hm, s_http_server_opts);
      }
      break;
    case 128:
      handle_ssi_call(nc, ev_data);
      break;
    default:
      break;
  }
}
