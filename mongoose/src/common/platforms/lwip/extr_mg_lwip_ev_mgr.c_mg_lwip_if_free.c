
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_iface {int * data; } ;


 int MG_FREE (int *) ;

void mg_lwip_if_free(struct mg_iface *iface) {
  MG_FREE(iface->data);
  iface->data = ((void*)0);
}
