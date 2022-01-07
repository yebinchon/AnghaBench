
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int * user_data; int flags; } ;


 int MG_F_CLOSE_IMMEDIATELY ;
 int printf (char*,struct mg_connection*) ;

__attribute__((used)) static void unproxy(struct mg_connection *c) {
  struct mg_connection *pc = (struct mg_connection *) c->user_data;
  if (pc != ((void*)0)) {
    pc->flags |= MG_F_CLOSE_IMMEDIATELY;
    pc->user_data = ((void*)0);
    c->user_data = ((void*)0);
  }
  printf("Closing connection %p\n", c);
}
