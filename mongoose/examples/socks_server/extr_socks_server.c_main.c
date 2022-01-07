
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;
struct mg_connection {int dummy; } ;


 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 struct mg_connection* mg_bind (struct mg_mgr*,char*,int *) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 int mg_set_protocol_socks (struct mg_connection*) ;
 int printf (char*,char*) ;
 char* s_listening_addr ;
 int stderr ;

int main(void) {
  struct mg_mgr mgr;
  struct mg_connection *c;

  mg_mgr_init(&mgr, ((void*)0));

  if ((c = mg_bind(&mgr, s_listening_addr, ((void*)0))) == ((void*)0)) {
    fprintf(stderr, "mg_bind(%s) failed\n", s_listening_addr);
    exit(EXIT_FAILURE);
  }
  mg_set_protocol_socks(c);

  printf("Starting socks5 proxy server on %s\n", s_listening_addr);
  for (;;) {
    mg_mgr_poll(&mgr, 1000);
  }
  mg_mgr_free(&mgr);

  return 0;
}
