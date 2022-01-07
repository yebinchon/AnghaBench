
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct ubus_request_data {int dummy; } ;
struct ubus_object {int dummy; } ;
struct ubus_context {int dummy; } ;
struct TYPE_2__ {int notify_response; } ;
struct hostapd_data {TYPE_1__ ubus; } ;
struct blob_attr {int dummy; } ;


 size_t NOTIFY_RESPONSE ;
 int UBUS_STATUS_INVALID_ARGUMENT ;
 int UBUS_STATUS_OK ;
 int __NOTIFY_MAX ;
 int blob_data (struct blob_attr*) ;
 int blob_len (struct blob_attr*) ;
 int blobmsg_get_u32 (struct blob_attr*) ;
 int blobmsg_parse (int ,int,struct blob_attr**,int ,int ) ;
 struct hostapd_data* get_hapd_from_object (struct ubus_object*) ;
 int notify_policy ;

__attribute__((used)) static int
hostapd_notify_response(struct ubus_context *ctx, struct ubus_object *obj,
   struct ubus_request_data *req, const char *method,
   struct blob_attr *msg)
{
 struct blob_attr *tb[__NOTIFY_MAX];
 struct hostapd_data *hapd = get_hapd_from_object(obj);
 struct wpabuf *elems;
 const char *pos;
 size_t len;

 blobmsg_parse(notify_policy, __NOTIFY_MAX, tb,
        blob_data(msg), blob_len(msg));

 if (!tb[NOTIFY_RESPONSE])
  return UBUS_STATUS_INVALID_ARGUMENT;

 hapd->ubus.notify_response = blobmsg_get_u32(tb[NOTIFY_RESPONSE]);

 return UBUS_STATUS_OK;
}
