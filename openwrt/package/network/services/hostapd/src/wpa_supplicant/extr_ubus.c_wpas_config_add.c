
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_interface {void* hostapd_ctrl; void* ctrl_interface; void* bridge_ifname; void* confname; void* ifname; void* driver; } ;
struct wpa_global {int dummy; } ;
struct ubus_request_data {int dummy; } ;
struct ubus_object {int dummy; } ;
struct ubus_context {int dummy; } ;
struct blob_attr {int dummy; } ;


 int UBUS_STATUS_INVALID_ARGUMENT ;
 int UBUS_STATUS_OK ;
 int UBUS_STATUS_UNKNOWN_ERROR ;
 size_t WPAS_CONFIG_BRIDGE ;
 size_t WPAS_CONFIG_CTRL ;
 size_t WPAS_CONFIG_DRIVER ;
 size_t WPAS_CONFIG_FILE ;
 size_t WPAS_CONFIG_HOSTAPD_CTRL ;
 size_t WPAS_CONFIG_IFACE ;
 int __WPAS_CONFIG_MAX ;
 int blob_data (struct blob_attr*) ;
 int blob_len (struct blob_attr*) ;
 void* blobmsg_get_string (struct blob_attr*) ;
 int blobmsg_parse (int ,int,struct blob_attr**,int ,int ) ;
 struct wpa_global* get_wpa_global_from_object (struct ubus_object*) ;
 struct wpa_interface* os_zalloc (int) ;
 int wpa_supplicant_add_iface (struct wpa_global*,struct wpa_interface*,int *) ;
 int wpas_config_add_policy ;

__attribute__((used)) static int
wpas_config_add(struct ubus_context *ctx, struct ubus_object *obj,
  struct ubus_request_data *req, const char *method,
  struct blob_attr *msg)
{
 struct blob_attr *tb[__WPAS_CONFIG_MAX];
 struct wpa_global *global = get_wpa_global_from_object(obj);
 struct wpa_interface *iface;

 blobmsg_parse(wpas_config_add_policy, __WPAS_CONFIG_MAX, tb, blob_data(msg), blob_len(msg));

 if (!tb[WPAS_CONFIG_FILE] || !tb[WPAS_CONFIG_IFACE] || !tb[WPAS_CONFIG_DRIVER])
  return UBUS_STATUS_INVALID_ARGUMENT;

 iface = os_zalloc(sizeof(struct wpa_interface));
 if (iface == ((void*)0))
  return UBUS_STATUS_UNKNOWN_ERROR;

 iface->driver = blobmsg_get_string(tb[WPAS_CONFIG_DRIVER]);
 iface->ifname = blobmsg_get_string(tb[WPAS_CONFIG_IFACE]);
 iface->confname = blobmsg_get_string(tb[WPAS_CONFIG_FILE]);

 if (tb[WPAS_CONFIG_BRIDGE])
  iface->bridge_ifname = blobmsg_get_string(tb[WPAS_CONFIG_BRIDGE]);

 if (tb[WPAS_CONFIG_CTRL])
  iface->ctrl_interface = blobmsg_get_string(tb[WPAS_CONFIG_CTRL]);

 if (tb[WPAS_CONFIG_HOSTAPD_CTRL])
  iface->hostapd_ctrl = blobmsg_get_string(tb[WPAS_CONFIG_HOSTAPD_CTRL]);

 if (!wpa_supplicant_add_iface(global, iface, ((void*)0)))
  return UBUS_STATUS_INVALID_ARGUMENT;

 return UBUS_STATUS_OK;
}
