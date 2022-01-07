
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union socket_address {int dummy; } socket_address ;
struct mg_connection {int dummy; } ;



__attribute__((used)) static void mg_null_if_get_conn_addr(struct mg_connection *c, int remote,
                                     union socket_address *sa) {
  (void) c;
  (void) remote;
  (void) sa;
}
