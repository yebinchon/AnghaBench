
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mg_mgr {int dummy; } ;
struct mg_connection {int dummy; } ;
struct TYPE_2__ {char* document_root; char* enable_directory_listing; } ;


 int SIGINT ;
 int SIGTERM ;
 int _IOLBF ;
 int ev_handler ;
 struct mg_connection* mg_bind (struct mg_mgr*,char*,int ) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 int mg_set_protocol_http_websocket (struct mg_connection*) ;
 int printf (char*,char*) ;
 char* s_http_port ;
 TYPE_1__ s_http_server_opts ;
 scalar_t__ s_signal_received ;
 int setvbuf (int ,int *,int ,int ) ;
 int signal (int ,int ) ;
 int signal_handler ;
 int stderr ;
 int stdout ;

int main(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;

  signal(SIGTERM, signal_handler);
  signal(SIGINT, signal_handler);
  setvbuf(stdout, ((void*)0), _IOLBF, 0);
  setvbuf(stderr, ((void*)0), _IOLBF, 0);

  mg_mgr_init(&mgr, ((void*)0));

  nc = mg_bind(&mgr, s_http_port, ev_handler);
  mg_set_protocol_http_websocket(nc);
  s_http_server_opts.document_root = ".";
  s_http_server_opts.enable_directory_listing = "yes";

  printf("Started on port %s\n", s_http_port);
  while (s_signal_received == 0) {
    mg_mgr_poll(&mgr, 200);
  }
  mg_mgr_free(&mgr);

  return 0;
}
