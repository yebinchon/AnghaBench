
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union socket_address {int dummy; } socket_address ;
struct mg_connection {int dummy; } ;



__attribute__((used)) static int mg_null_if_listen_udp(struct mg_connection *c,
                                 union socket_address *sa) {
  (void) c;
  (void) sa;
  return -1;
}
