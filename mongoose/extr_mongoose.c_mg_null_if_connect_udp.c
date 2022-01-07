
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int flags; } ;


 int MG_F_CLOSE_IMMEDIATELY ;

__attribute__((used)) static void mg_null_if_connect_udp(struct mg_connection *c) {
  c->flags |= MG_F_CLOSE_IMMEDIATELY;
}
