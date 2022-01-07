
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;
struct mg_connection {int dummy; } ;


 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*,char const*) ;
 int http_handler ;
 struct mg_connection* mg_bind (struct mg_mgr*,char const*,int ) ;
 int mg_set_protocol_http_websocket (struct mg_connection*) ;
 int printf (char*,char const*) ;
 int stderr ;

__attribute__((used)) static void start_http_server(struct mg_mgr *mgr, const char *addr) {
  struct mg_connection *c;
  if ((c = mg_bind(mgr, addr, http_handler)) == ((void*)0)) {
    fprintf(stderr, "Cannot start HTTP server on port [%s]\n", addr);
    exit(EXIT_FAILURE);
  }
  mg_set_protocol_http_websocket(c);
  printf("HTTP server started on %s\n", addr);
}
