
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ubus_object {char* name; int n_methods; int methods; TYPE_3__* type; } ;
struct TYPE_5__ {int banned; struct ubus_object obj; } ;
struct hostapd_data {TYPE_2__ ubus; TYPE_1__* conf; } ;
struct TYPE_6__ {int n_methods; int methods; } ;
struct TYPE_4__ {int mesh; int iface; } ;


 int MESH_ENABLED ;
 scalar_t__ asprintf (char**,char*,int ) ;
 int avl_compare_macaddr ;
 int avl_init (int *,int ,int,int *) ;
 TYPE_3__ bss_object_type ;
 int ctx ;
 int hostapd_ubus_init () ;
 int hostapd_ubus_ref_inc () ;
 int ubus_add_object (int ,struct ubus_object*) ;

void hostapd_ubus_add_bss(struct hostapd_data *hapd)
{
 struct ubus_object *obj = &hapd->ubus.obj;
 char *name;
 int ret;






 if (!hostapd_ubus_init())
  return;

 if (asprintf(&name, "hostapd.%s", hapd->conf->iface) < 0)
  return;

 avl_init(&hapd->ubus.banned, avl_compare_macaddr, 0, ((void*)0));
 obj->name = name;
 obj->type = &bss_object_type;
 obj->methods = bss_object_type.methods;
 obj->n_methods = bss_object_type.n_methods;
 ret = ubus_add_object(ctx, obj);
 hostapd_ubus_ref_inc();
}
