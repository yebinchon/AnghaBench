
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubus_object {scalar_t__ id; scalar_t__ name; } ;
struct hapd_interfaces {struct ubus_object ubus; } ;


 int ctx ;
 int free (char*) ;
 int hostapd_ubus_ref_dec () ;
 int ubus_remove_object (int ,struct ubus_object*) ;

void hostapd_ubus_free(struct hapd_interfaces *interfaces)
{
 struct ubus_object *obj = &interfaces->ubus;
 char *name = (char *) obj->name;

 if (!ctx)
  return;

 if (obj->id) {
  ubus_remove_object(ctx, obj);
  hostapd_ubus_ref_dec();
 }

 free(name);
}
