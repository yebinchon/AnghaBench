
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {scalar_t__ user_data; } ;



 int sprintf (char*,char*,int) ;

__attribute__((used)) static void cb5(struct mg_connection *nc, int ev, void *ev_data) {
  switch (ev) {
    case 128:
      sprintf((char *) nc->user_data, "%d", *(int *) ev_data);
      break;
    default:
      break;
  }
}
