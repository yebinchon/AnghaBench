
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mg_connection {TYPE_2__* iface; } ;
typedef scalar_t__ sock_t ;
struct TYPE_4__ {TYPE_1__* vtable; } ;
struct TYPE_3__ {int (* sock_set ) (struct mg_connection*,scalar_t__) ;} ;


 scalar_t__ INVALID_SOCKET ;
 int stub1 (struct mg_connection*,scalar_t__) ;

void mg_sock_set(struct mg_connection *nc, sock_t sock) {
  if (sock != INVALID_SOCKET) {
    nc->iface->vtable->sock_set(nc, sock);
  }
}
