
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_iface {int dummy; } ;



void mg_socket_if_free(struct mg_iface *iface) {
  (void) iface;
}
