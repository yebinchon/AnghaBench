
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct websocket_message {int size; scalar_t__ data; } ;
struct mg_str {char* member_0; int member_1; } ;
struct mg_connection {int dummy; } ;
struct http_message {int dummy; } ;






 int broadcast (struct mg_connection*,struct mg_str) ;
 int is_websocket (struct mg_connection*) ;
 struct mg_str mg_mk_str (char*) ;
 int mg_serve_http (struct mg_connection*,struct http_message*,int ) ;
 int s_http_server_opts ;

__attribute__((used)) static void ev_handler(struct mg_connection *nc, int ev, void *ev_data) {
  switch (ev) {
    case 128: {

      broadcast(nc, mg_mk_str("++ joined"));
      break;
    }
    case 129: {
      struct websocket_message *wm = (struct websocket_message *) ev_data;

      struct mg_str d = {(char *) wm->data, wm->size};
      broadcast(nc, d);
      break;
    }
    case 130: {
      mg_serve_http(nc, (struct http_message *) ev_data, s_http_server_opts);
      break;
    }
    case 131: {

      if (is_websocket(nc)) {
        broadcast(nc, mg_mk_str("-- left"));
      }
      break;
    }
  }
}
