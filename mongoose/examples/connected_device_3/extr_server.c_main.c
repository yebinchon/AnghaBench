
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mg_mgr {int dummy; } ;
struct mg_connection {int dummy; } ;
typedef int cs_stat_t ;
struct TYPE_2__ {char* document_root; } ;


 int ev_handler ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 struct mg_connection* mg_bind (struct mg_mgr*,char*,int ) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 int mg_set_protocol_http_websocket (struct mg_connection*) ;
 scalar_t__ mg_stat (char*,int *) ;
 int printf (char*,char*) ;
 char* s_http_port ;
 TYPE_1__ s_http_server_opts ;
 int stderr ;

int main(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  cs_stat_t st;

  mg_mgr_init(&mgr, ((void*)0));
  nc = mg_bind(&mgr, s_http_port, ev_handler);
  if (nc == ((void*)0)) {
    fprintf(stderr, "Cannot bind to %s\n", s_http_port);
    exit(1);
  }


  mg_set_protocol_http_websocket(nc);
  s_http_server_opts.document_root = "web_root";

  if (mg_stat(s_http_server_opts.document_root, &st) != 0) {
    fprintf(stderr, "%s", "Cannot find web_root directory, exiting\n");
    exit(1);
  }

  printf("Starting web server on port %s\n", s_http_port);
  for (;;) {
    mg_mgr_poll(&mgr, 1000);
  }
  mg_mgr_free(&mgr);

  return 0;
}
