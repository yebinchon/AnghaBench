
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;



int mg_null_if_tcp_recv(struct mg_connection *c, void *buf, size_t len) {
  (void) c;
  (void) buf;
  (void) len;
  return -1;
}
