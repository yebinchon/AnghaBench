
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mg_iface {TYPE_1__* mgr; } ;
struct TYPE_2__ {int ctl; } ;


 int DBG (char*) ;
 int SOCK_DGRAM ;
 int mg_socketpair (int ,int ) ;

void mg_socket_if_init(struct mg_iface *iface) {
  (void) iface;
  DBG(("%p using select()", iface->mgr));



}
