
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubus_object {int n_methods; int methods; TYPE_1__* type; int name; } ;
struct hapd_interfaces {char* name; struct ubus_object ubus; } ;
struct TYPE_2__ {int n_methods; int methods; } ;


 int ctx ;
 TYPE_1__ daemon_object_type ;
 int hostapd_ubus_init () ;
 int hostapd_ubus_ref_inc () ;
 int malloc (int) ;
 int strcat (int ,char*) ;
 int strcpy (int ,char*) ;
 int strlen (char*) ;
 int ubus_add_object (int ,struct ubus_object*) ;

void hostapd_ubus_add(struct hapd_interfaces *interfaces)
{
 struct ubus_object *obj = &interfaces->ubus;
 int name_len;
 int ret;

 if (!hostapd_ubus_init())
  return;

 name_len = strlen("hostapd") + 1;
 if (interfaces->name)
  name_len += strlen(interfaces->name) + 1;
 obj->name = malloc(name_len);
 strcpy(obj->name, "hostapd");
 if (interfaces->name) {
  strcat(obj->name, ".");
  strcat(obj->name, interfaces->name);
 }

 obj->type = &daemon_object_type;
 obj->methods = daemon_object_type.methods;
 obj->n_methods = daemon_object_type.n_methods;
 ret = ubus_add_object(ctx, obj);
 hostapd_ubus_ref_inc();
}
