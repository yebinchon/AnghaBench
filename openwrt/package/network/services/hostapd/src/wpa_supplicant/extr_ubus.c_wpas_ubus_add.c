
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; } ;
struct ubus_object {int n_methods; int methods; TYPE_2__* type; int name; } ;
struct wpa_global {TYPE_1__ params; struct ubus_object ubus_global; } ;
struct TYPE_4__ {int n_methods; int methods; } ;


 int ctx ;
 int malloc (int) ;
 int strcat (int ,char*) ;
 int strcpy (int ,char*) ;
 int strlen (char*) ;
 int ubus_add_object (int ,struct ubus_object*) ;
 TYPE_2__ wpas_daemon_object_type ;
 int wpas_ubus_init () ;
 int wpas_ubus_ref_inc () ;

void wpas_ubus_add(struct wpa_global *global)
{
 struct ubus_object *obj = &global->ubus_global;
 int name_len;
 int ret;

 if (!wpas_ubus_init())
  return;

 name_len = strlen("wpa_supplicant") + 1;
 if (global->params.name)
  name_len += strlen(global->params.name) + 1;
 obj->name = malloc(name_len);
 strcpy(obj->name, "wpa_supplicant");

 if (global->params.name)
 {
  strcat(obj->name, ".");
  strcat(obj->name, global->params.name);
 }

 obj->type = &wpas_daemon_object_type;
 obj->methods = wpas_daemon_object_type.methods;
 obj->n_methods = wpas_daemon_object_type.n_methods;
 ret = ubus_add_object(ctx, obj);
 wpas_ubus_ref_inc();
}
