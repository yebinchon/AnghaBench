
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubus_object {scalar_t__ id; scalar_t__ name; } ;
struct wpa_global {struct ubus_object ubus_global; } ;


 int ctx ;
 int free (char*) ;
 int ubus_remove_object (int ,struct ubus_object*) ;
 int wpas_ubus_ref_dec () ;

void wpas_ubus_free(struct wpa_global *global)
{
 struct ubus_object *obj = &global->ubus_global;
 char *name = (char *) obj->name;

 if (!ctx)
  return;

 if (obj->id) {
  ubus_remove_object(ctx, obj);
  wpas_ubus_ref_dec();
 }

 free(name);
}
