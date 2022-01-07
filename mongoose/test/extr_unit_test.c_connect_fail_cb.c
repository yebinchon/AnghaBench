
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {scalar_t__ user_data; } ;





__attribute__((used)) static void connect_fail_cb(struct mg_connection *nc, int ev, void *p) {
  switch (ev) {
    case 128:

      *(int *) nc->user_data |= *(int *) p == 0 ? 1 : 4;
      break;
    case 129:
      *(int *) nc->user_data |= 2;
      break;
  }
}
