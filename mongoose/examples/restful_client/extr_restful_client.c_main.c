
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;
struct mg_connection {int dummy; } ;


 int ev_handler ;
 struct mg_connection* mg_connect_http (struct mg_mgr*,int ,char*,int *,int *) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 int mg_set_protocol_http_websocket (struct mg_connection*) ;
 int printf (char*,char*) ;
 scalar_t__ s_exit_flag ;
 char* s_url ;

int main(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;

  mg_mgr_init(&mgr, ((void*)0));
  nc = mg_connect_http(&mgr, ev_handler, s_url, ((void*)0), ((void*)0));
  mg_set_protocol_http_websocket(nc);

  printf("Starting RESTful client against %s\n", s_url);
  while (s_exit_flag == 0) {
    mg_mgr_poll(&mgr, 1000);
  }
  mg_mgr_free(&mgr);

  return 0;
}
