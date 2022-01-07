
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mg_mgr {int dummy; } ;
struct mg_connection {int dummy; } ;
struct TYPE_2__ {char* document_root; } ;


 scalar_t__ SESSION_CHECK_INTERVAL ;
 int ev_handler ;
 int login_handler ;
 int logout_handler ;
 struct mg_connection* mg_bind (struct mg_mgr*,char*,int ) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 int mg_register_http_endpoint (struct mg_connection*,char*,int ) ;
 int mg_set_protocol_http_websocket (struct mg_connection*) ;
 int mg_set_timer (struct mg_connection*,scalar_t__) ;
 scalar_t__ mg_time () ;
 int printf (char*,char*) ;
 char* s_http_port ;
 TYPE_1__ s_http_server_opts ;
 int srand (scalar_t__) ;

int main(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  srand(mg_time());

  mg_mgr_init(&mgr, ((void*)0));
  nc = mg_bind(&mgr, s_http_port, ev_handler);

  mg_set_protocol_http_websocket(nc);
  s_http_server_opts.document_root = ".";
  mg_register_http_endpoint(nc, "/login.html", login_handler);
  mg_register_http_endpoint(nc, "/logout", logout_handler);
  mg_set_timer(nc, mg_time() + SESSION_CHECK_INTERVAL);

  printf("Starting web server on port %s\n", s_http_port);
  for (;;) {
    mg_mgr_poll(&mgr, 1000);
  }
  mg_mgr_free(&mgr);

  return 0;
}
