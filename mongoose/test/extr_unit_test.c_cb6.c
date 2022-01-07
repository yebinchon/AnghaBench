
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int flags; } ;


 int MG_F_USER_4 ;
 int MG_F_WANT_READ ;

__attribute__((used)) static void cb6(struct mg_connection *nc, int ev, void *ev_data) {
  (void) ev;
  (void) ev_data;
  nc->flags |= MG_F_USER_4;
  nc->flags |= MG_F_WANT_READ;
}
