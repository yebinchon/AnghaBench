
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;
struct mg_connection {int dummy; } ;


 int SIGINT ;
 int SIGTERM ;
 int coap_handler ;
 struct mg_connection* mg_bind (struct mg_mgr*,char*,int ) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int ) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 int mg_set_protocol_coap (struct mg_connection*) ;
 int printf (char*,...) ;
 char* s_default_address ;
 int s_sig_received ;
 int signal (int ,int ) ;
 int signal_handler ;

int main(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;

  signal(SIGTERM, signal_handler);
  signal(SIGINT, signal_handler);

  mg_mgr_init(&mgr, 0);

  nc = mg_bind(&mgr, s_default_address, coap_handler);
  if (nc == ((void*)0)) {
    printf("Unable to start listener at %s\n", s_default_address);
    return -1;
  }

  printf("Listening for CoAP messages at %s\n", s_default_address);

  mg_set_protocol_coap(nc);

  while (!s_sig_received) {
    mg_mgr_poll(&mgr, 1000000);
  }

  printf("Exiting on signal %d\n", s_sig_received);

  mg_mgr_free(&mgr);
  return 0;
}
