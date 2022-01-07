
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;
struct mg_connection {int dummy; } ;


 int MG_LISTEN_ADDR ;
 int ev_handler ;
 struct mg_connection* mg_bind (struct mg_mgr*,int ,int ) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 int mg_set_protocol_http_websocket (struct mg_connection*) ;
 int printf (char*,...) ;
 int setup_ap () ;
 int system_get_free_heap_size () ;
 char* system_get_sdk_version () ;

__attribute__((used)) static void mg_task(void *arg) {
  struct mg_mgr mgr;
  struct mg_connection *nc;

  printf("\r\n\r\nSDK version: %s\r\n", system_get_sdk_version());
  printf("Free RAM: %d\r\n", system_get_free_heap_size());
  setup_ap();

  mg_mgr_init(&mgr, ((void*)0));

  nc = mg_bind(&mgr, MG_LISTEN_ADDR, ev_handler);
  if (nc == ((void*)0)) {
    printf("Error setting up listener!\n");
    return;
  }
  mg_set_protocol_http_websocket(nc);

  while (1) {
    mg_mgr_poll(&mgr, 1000);
  }
}
