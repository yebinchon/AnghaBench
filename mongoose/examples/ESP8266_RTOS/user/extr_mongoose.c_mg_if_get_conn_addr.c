
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union socket_address {int dummy; } socket_address ;
struct mg_connection {TYPE_2__* iface; } ;
struct TYPE_4__ {TYPE_1__* vtable; } ;
struct TYPE_3__ {int (* get_conn_addr ) (struct mg_connection*,int,union socket_address*) ;} ;


 int stub1 (struct mg_connection*,int,union socket_address*) ;

void mg_if_get_conn_addr(struct mg_connection *nc, int remote,
                         union socket_address *sa) {
  nc->iface->vtable->get_conn_addr(nc, remote, sa);
}
