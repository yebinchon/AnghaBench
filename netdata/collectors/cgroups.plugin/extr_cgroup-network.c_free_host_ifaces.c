
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iface {struct iface* next; } ;


 int free_iface (struct iface*) ;

void free_host_ifaces(struct iface *iface) {
    while(iface) {
        struct iface *t = iface->next;
        free_iface(iface);
        iface = t;
    }
}
