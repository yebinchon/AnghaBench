
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;
struct mg_connection {int dummy; } ;


 int coap_handler ;
 struct mg_connection* mg_connect (struct mg_mgr*,char*,int ) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int ) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 int mg_set_protocol_coap (struct mg_connection*) ;
 int printf (char*,char*) ;
 char* s_default_address ;
 int s_time_to_exit ;

int main(int argc, char *argv[]) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  char *address = s_default_address;

  if (argc > 1) {
    address = argv[1];
  }

  printf("Using %s as CoAP server\n", address);

  mg_mgr_init(&mgr, 0);

  nc = mg_connect(&mgr, address, coap_handler);
  if (nc == ((void*)0)) {
    printf("Unable to connect to %s\n", address);
    return -1;
  }

  mg_set_protocol_coap(nc);

  while (!s_time_to_exit) {
    mg_mgr_poll(&mgr, 1000000);
  }

  mg_mgr_free(&mgr);

  return 0;
}
