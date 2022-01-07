
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {scalar_t__ user_data; } ;





__attribute__((used)) static void ev_timer_handler(struct mg_connection *c, int ev, void *ev_data) {
  (void) ev_data;
  switch (ev) {
    case 128:
      (*(int *) c->user_data)++;
      break;
    case 129:

      (*(int *) c->user_data) += 100;
      break;
  }
}
