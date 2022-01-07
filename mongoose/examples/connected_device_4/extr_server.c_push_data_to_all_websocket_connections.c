
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;
struct mg_connection {int flags; } ;


 int MG_F_IS_WEBSOCKET ;
 double RAND_MAX ;
 int WEBSOCKET_OP_TEXT ;
 struct mg_connection* mg_next (struct mg_mgr*,struct mg_connection*) ;
 int mg_printf_websocket_frame (struct mg_connection*,int ,char*,int) ;
 scalar_t__ rand () ;

__attribute__((used)) static void push_data_to_all_websocket_connections(struct mg_mgr *m) {
  struct mg_connection *c;
  int memory_usage = (double) rand() / RAND_MAX * 100.0;

  for (c = mg_next(m, ((void*)0)); c != ((void*)0); c = mg_next(m, c)) {
    if (c->flags & MG_F_IS_WEBSOCKET) {
      mg_printf_websocket_frame(c, WEBSOCKET_OP_TEXT, "%d", memory_usage);
    }
  }
}
