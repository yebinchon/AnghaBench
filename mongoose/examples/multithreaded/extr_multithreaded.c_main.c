
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
 int SOCK_STREAM ;
 int closesocket (int ) ;
 int ev_handler ;
 int exit (int) ;
 struct mg_connection* mg_bind (struct mg_mgr*,char*,int ) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 int mg_set_protocol_http_websocket (struct mg_connection*) ;
 scalar_t__ mg_socketpair (int *,int ) ;
 int mg_start_thread (int ,struct mg_mgr*) ;
 int perror (char*) ;
 int printf (char*,...) ;
 char* s_http_port ;
 TYPE_1__ s_http_server_opts ;
 int s_num_worker_threads ;
 scalar_t__ s_received_signal ;
 int signal (int ,int ) ;
 int signal_handler ;
 int * sock ;
 int worker_thread_proc ;

int main(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  int i;

  if (mg_socketpair(sock, SOCK_STREAM) == 0) {
    perror("Opening socket pair");
    exit(1);
  }

  signal(SIGTERM, signal_handler);
  signal(SIGINT, signal_handler);

  mg_mgr_init(&mgr, ((void*)0));

  nc = mg_bind(&mgr, s_http_port, ev_handler);
  if (nc == ((void*)0)) {
    printf("Failed to create listener\n");
    return 1;
  }

  mg_set_protocol_http_websocket(nc);
  s_http_server_opts.document_root = ".";
  s_http_server_opts.enable_directory_listing = "no";

  for (i = 0; i < s_num_worker_threads; i++) {
    mg_start_thread(worker_thread_proc, &mgr);
  }

  printf("Started on port %s\n", s_http_port);
  while (s_received_signal == 0) {
    mg_mgr_poll(&mgr, 200);
  }

  mg_mgr_free(&mgr);

  closesocket(sock[0]);
  closesocket(sock[1]);

  return 0;
}
