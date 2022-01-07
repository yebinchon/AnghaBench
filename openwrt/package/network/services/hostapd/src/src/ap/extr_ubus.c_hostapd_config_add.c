
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubus_request_data {int dummy; } ;
struct ubus_object {int dummy; } ;
struct ubus_context {int dummy; } ;
struct hapd_interfaces {int dummy; } ;
struct blob_attr {int dummy; } ;
typedef int buf ;


 size_t CONFIG_FILE ;
 size_t CONFIG_IFACE ;
 int UBUS_STATUS_INVALID_ARGUMENT ;
 int UBUS_STATUS_OK ;
 int __CONFIG_MAX ;
 int blob_data (struct blob_attr*) ;
 int blob_len (struct blob_attr*) ;
 char* blobmsg_get_string (struct blob_attr*) ;
 int blobmsg_parse (int ,int,struct blob_attr**,int ,int ) ;
 int config_add_policy ;
 struct hapd_interfaces* get_hapd_interfaces_from_object (struct ubus_object*) ;
 scalar_t__ hostapd_add_iface (struct hapd_interfaces*,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static int
hostapd_config_add(struct ubus_context *ctx, struct ubus_object *obj,
     struct ubus_request_data *req, const char *method,
     struct blob_attr *msg)
{
 struct blob_attr *tb[__CONFIG_MAX];
 struct hapd_interfaces *interfaces = get_hapd_interfaces_from_object(obj);
 char buf[128];

 blobmsg_parse(config_add_policy, __CONFIG_MAX, tb, blob_data(msg), blob_len(msg));

 if (!tb[CONFIG_FILE] || !tb[CONFIG_IFACE])
  return UBUS_STATUS_INVALID_ARGUMENT;

 snprintf(buf, sizeof(buf), "bss_config=%s:%s",
  blobmsg_get_string(tb[CONFIG_IFACE]),
  blobmsg_get_string(tb[CONFIG_FILE]));

 if (hostapd_add_iface(interfaces, buf))
  return UBUS_STATUS_INVALID_ARGUMENT;

 return UBUS_STATUS_OK;
}
