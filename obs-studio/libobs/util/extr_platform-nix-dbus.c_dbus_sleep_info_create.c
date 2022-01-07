
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct service_info {int name; } ;
struct dbus_sleep_info {int type; struct service_info const* service; int c; } ;
typedef enum service_type { ____Placeholder_service_type } service_type ;
struct TYPE_4__ {int message; } ;
typedef TYPE_1__ DBusError ;


 int DBUS_BUS_SESSION ;
 int LOG_DEBUG ;
 int LOG_ERROR ;
 int bfree (struct dbus_sleep_info*) ;
 int blog (int ,char*,int ) ;
 struct dbus_sleep_info* bzalloc (int) ;
 int dbus_bus_get_private (int ,TYPE_1__*) ;
 scalar_t__ dbus_bus_name_has_owner (int ,int ,int *) ;
 int dbus_error_init (TYPE_1__*) ;
 int dbus_sleep_info_destroy (struct dbus_sleep_info*) ;
 size_t num_services ;
 struct service_info* services ;

struct dbus_sleep_info *dbus_sleep_info_create(void)
{
 struct dbus_sleep_info *info = bzalloc(sizeof(*info));
 DBusError err;

 dbus_error_init(&err);

 info->c = dbus_bus_get_private(DBUS_BUS_SESSION, &err);
 if (!info->c) {
  blog(LOG_ERROR, "Could not create dbus connection: %s",
       err.message);
  bfree(info);
  return ((void*)0);
 }

 for (size_t i = 0; i < num_services; i++) {
  const struct service_info *service = &services[i];

  if (!service->name)
   continue;

  if (dbus_bus_name_has_owner(info->c, service->name, ((void*)0))) {
   blog(LOG_DEBUG, "Found dbus service: %s",
        service->name);
   info->service = service;
   info->type = (enum service_type)i;
   return info;
  }
 }

 dbus_sleep_info_destroy(info);
 return ((void*)0);
}
