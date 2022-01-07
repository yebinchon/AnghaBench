
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mg_connection {TYPE_1__* listener; int flags; } ;
struct TYPE_2__ {scalar_t__ user_data; } ;


 int DBG (char*) ;


 int MG_F_SEND_AND_CLOSE ;
 int mg_printf (struct mg_connection*,char*) ;

__attribute__((used)) static void handle_hello1(struct mg_connection *nc, int ev, void *ev_data) {
  (void) ev_data;
  switch (ev) {
    case 128:
      mg_printf(nc, "HTTP/1.0 200 OK\r\n\r\n[I am Hello1]");
      nc->flags |= MG_F_SEND_AND_CLOSE;
      break;
    case 129:
      DBG(("%p == hello1 close", nc));
      (*(int *) nc->listener->user_data) += 10;
      break;
  }
}
