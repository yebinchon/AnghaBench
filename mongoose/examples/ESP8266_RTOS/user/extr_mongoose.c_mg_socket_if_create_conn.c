
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;



int mg_socket_if_create_conn(struct mg_connection *nc) {
  (void) nc;
  return 1;
}
