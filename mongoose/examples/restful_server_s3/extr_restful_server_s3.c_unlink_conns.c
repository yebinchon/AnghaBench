
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int * user_data; } ;



__attribute__((used)) static void unlink_conns(struct mg_connection *nc1) {
  struct mg_connection *nc2 = (struct mg_connection *) nc1->user_data;
  if (nc1->user_data != ((void*)0)) {
    nc1->user_data = ((void*)0);
    nc2->user_data = ((void*)0);
  }
}
