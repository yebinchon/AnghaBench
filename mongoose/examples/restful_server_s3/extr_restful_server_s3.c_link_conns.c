
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {struct mg_connection* user_data; } ;



__attribute__((used)) static void link_conns(struct mg_connection *nc1, struct mg_connection *nc2) {
  nc1->user_data = nc2;
  nc2->user_data = nc1;
}
