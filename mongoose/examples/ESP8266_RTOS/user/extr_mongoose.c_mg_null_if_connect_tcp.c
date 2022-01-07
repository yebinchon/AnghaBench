
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union socket_address {int dummy; } socket_address ;
struct mg_connection {int flags; } ;


 int MG_F_CLOSE_IMMEDIATELY ;

__attribute__((used)) static void mg_null_if_connect_tcp(struct mg_connection *c,
                                   const union socket_address *sa) {
  c->flags |= MG_F_CLOSE_IMMEDIATELY;
  (void) sa;
}
