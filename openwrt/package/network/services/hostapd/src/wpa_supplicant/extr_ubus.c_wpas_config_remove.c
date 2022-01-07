
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int ifname; struct wpa_supplicant* next; } ;
struct wpa_global {struct wpa_supplicant* ifaces; } ;
struct ubus_request_data {int dummy; } ;
struct ubus_object {int dummy; } ;
struct ubus_context {int dummy; } ;
struct blob_attr {int dummy; } ;


 int UBUS_STATUS_INVALID_ARGUMENT ;
 int UBUS_STATUS_OK ;
 size_t WPAS_CONFIG_REM_IFACE ;
 int __WPAS_CONFIG_REM_MAX ;
 int blob_data (struct blob_attr*) ;
 int blob_len (struct blob_attr*) ;
 int blobmsg_get_string (struct blob_attr*) ;
 int blobmsg_parse (int ,int,struct blob_attr**,int ,int ) ;
 struct wpa_global* get_wpa_global_from_object (struct ubus_object*) ;
 int strncmp (int ,int ,int) ;
 scalar_t__ wpa_supplicant_remove_iface (struct wpa_global*,struct wpa_supplicant*,int ) ;
 int wpas_config_remove_policy ;

__attribute__((used)) static int
wpas_config_remove(struct ubus_context *ctx, struct ubus_object *obj,
     struct ubus_request_data *req, const char *method,
     struct blob_attr *msg)
{
 struct blob_attr *tb[__WPAS_CONFIG_REM_MAX];
 struct wpa_global *global = get_wpa_global_from_object(obj);
 struct wpa_supplicant *wpa_s = ((void*)0);
 unsigned int found = 0;

 blobmsg_parse(wpas_config_remove_policy, __WPAS_CONFIG_REM_MAX, tb, blob_data(msg), blob_len(msg));

 if (!tb[WPAS_CONFIG_REM_IFACE])
  return UBUS_STATUS_INVALID_ARGUMENT;


 for (wpa_s = global->ifaces; wpa_s; wpa_s = wpa_s->next) {
  if (!strncmp(wpa_s->ifname,
        blobmsg_get_string(tb[WPAS_CONFIG_REM_IFACE]),
        sizeof(wpa_s->ifname)))
  {
   found = 1;
   break;
  }
 }

 if (!found)
  return UBUS_STATUS_INVALID_ARGUMENT;

 if (wpa_supplicant_remove_iface(global, wpa_s, 0))
  return UBUS_STATUS_INVALID_ARGUMENT;

 return UBUS_STATUS_OK;
}
