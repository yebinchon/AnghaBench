
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;
struct mg_iface_vtable {int dummy; } ;
struct mg_iface {struct mg_iface_vtable const* vtable; int * data; struct mg_mgr* mgr; } ;


 scalar_t__ MG_CALLOC (int,int) ;

struct mg_iface *mg_if_create_iface(const struct mg_iface_vtable *vtable,
                                    struct mg_mgr *mgr) {
  struct mg_iface *iface = (struct mg_iface *) MG_CALLOC(1, sizeof(*iface));
  iface->mgr = mgr;
  iface->data = ((void*)0);
  iface->vtable = vtable;
  return iface;
}
