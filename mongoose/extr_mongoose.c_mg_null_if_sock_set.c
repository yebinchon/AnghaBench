
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;
typedef int sock_t ;



__attribute__((used)) static void mg_null_if_sock_set(struct mg_connection *c, sock_t sock) {
  (void) c;
  (void) sock;
}
