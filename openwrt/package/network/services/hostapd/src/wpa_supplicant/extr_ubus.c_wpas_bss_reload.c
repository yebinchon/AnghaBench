
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct ubus_request_data {int dummy; } ;
struct ubus_object {int dummy; } ;
struct ubus_context {int dummy; } ;
struct blob_attr {int dummy; } ;


 int UBUS_STATUS_UNKNOWN_ERROR ;
 struct wpa_supplicant* get_wpas_from_object (struct ubus_object*) ;
 scalar_t__ wpa_supplicant_reload_configuration (struct wpa_supplicant*) ;

__attribute__((used)) static int
wpas_bss_reload(struct ubus_context *ctx, struct ubus_object *obj,
  struct ubus_request_data *req, const char *method,
  struct blob_attr *msg)
{
 struct wpa_supplicant *wpa_s = get_wpas_from_object(obj);

 if (wpa_supplicant_reload_configuration(wpa_s))
  return UBUS_STATUS_UNKNOWN_ERROR;
 else
  return 0;
}
