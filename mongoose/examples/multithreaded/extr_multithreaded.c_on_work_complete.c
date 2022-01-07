
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_result {unsigned long conn_id; int sleep_time; } ;
struct mg_connection {int * user_data; int mgr; } ;


 struct mg_connection* mg_next (int ,struct mg_connection*) ;
 int mg_printf (struct mg_connection*,char*,char*) ;
 int mg_send_head (struct mg_connection*,int,int ,char*) ;
 int sprintf (char*,char*,unsigned long,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void on_work_complete(struct mg_connection *nc, int ev, void *ev_data) {
  (void) ev;
  char s[32];
  struct mg_connection *c;
  for (c = mg_next(nc->mgr, ((void*)0)); c != ((void*)0); c = mg_next(nc->mgr, c)) {
    if (c->user_data != ((void*)0)) {
      struct work_result *res = (struct work_result *)ev_data;
      if ((unsigned long)c->user_data == res->conn_id) {
        sprintf(s, "conn_id:%lu sleep:%d", res->conn_id, res->sleep_time);
        mg_send_head(c, 200, strlen(s), "Content-Type: text/plain");
        mg_printf(c, "%s", s);
      }
    }
  }
}
