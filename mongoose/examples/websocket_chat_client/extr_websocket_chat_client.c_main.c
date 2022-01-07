
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;
struct mg_connection {int dummy; } ;


 int ev_handler ;
 int fprintf (int ,char*) ;
 struct mg_connection* mg_connect_ws (struct mg_mgr*,int ,char const*,char*,int *) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 int s_done ;
 int stderr ;

int main(int argc, char **argv) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  const char *chat_server_url = argc > 1 ? argv[1] : "ws://127.0.0.1:8000";

  mg_mgr_init(&mgr, ((void*)0));

  nc = mg_connect_ws(&mgr, ev_handler, chat_server_url, "ws_chat", ((void*)0));
  if (nc == ((void*)0)) {
    fprintf(stderr, "Invalid address\n");
    return 1;
  }

  while (!s_done) {
    mg_mgr_poll(&mgr, 100);
  }
  mg_mgr_free(&mgr);

  return 0;
}
