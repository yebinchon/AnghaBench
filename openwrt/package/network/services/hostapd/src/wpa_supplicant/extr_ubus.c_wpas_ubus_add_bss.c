
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubus_object {char* name; int n_methods; int methods; TYPE_2__* type; } ;
struct TYPE_3__ {struct ubus_object obj; } ;
struct wpa_supplicant {int ifname; TYPE_1__ ubus; } ;
struct TYPE_4__ {int n_methods; int methods; } ;


 scalar_t__ asprintf (char**,char*,int ) ;
 TYPE_2__ bss_object_type ;
 int ctx ;
 int ubus_add_object (int ,struct ubus_object*) ;
 int wpas_ubus_ref_inc () ;

void wpas_ubus_add_bss(struct wpa_supplicant *wpa_s)
{
 struct ubus_object *obj = &wpa_s->ubus.obj;
 char *name;
 int ret;


 if (asprintf(&name, "wpa_supplicant.%s", wpa_s->ifname) < 0)
  return;

 obj->name = name;
 obj->type = &bss_object_type;
 obj->methods = bss_object_type.methods;
 obj->n_methods = bss_object_type.n_methods;
 ret = ubus_add_object(ctx, obj);
 wpas_ubus_ref_inc();
}
