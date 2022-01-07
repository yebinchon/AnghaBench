
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;


 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 int s_http_address ;
 int s_mqtt_address ;
 int start_http_server (struct mg_mgr*,int ) ;
 int start_mqtt_server (struct mg_mgr*,int ) ;

int main(void) {
  struct mg_mgr mgr;
  mg_mgr_init(&mgr, ((void*)0));
  start_http_server(&mgr, s_http_address);
  start_mqtt_server(&mgr, s_mqtt_address);
  for (;;) {
    mg_mgr_poll(&mgr, 1000);
  }
}
