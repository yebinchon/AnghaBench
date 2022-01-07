
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ubus_request_data {int dummy; } ;
struct ubus_object {int dummy; } ;
struct ubus_context {int dummy; } ;
struct hostapd_neighbor_entry {int dummy; } ;
struct hostapd_data {int own_addr; } ;
struct blob_attr {int dummy; } ;
struct TYPE_5__ {int head; } ;


 int UBUS_STATUS_NOT_FOUND ;
 TYPE_1__ b ;
 int blob_buf_init (TYPE_1__*,int ) ;
 int blobmsg_close_array (TYPE_1__*,void*) ;
 void* blobmsg_open_array (TYPE_1__*,char*) ;
 struct hostapd_data* get_hapd_from_object (struct ubus_object*) ;
 struct hostapd_neighbor_entry* hostapd_neighbor_get (struct hostapd_data*,int ,int *) ;
 int hostapd_rrm_nr_enable (struct hostapd_data*) ;
 int hostapd_rrm_print_nr (struct hostapd_neighbor_entry*) ;
 int ubus_send_reply (struct ubus_context*,struct ubus_request_data*,int ) ;

__attribute__((used)) static int
hostapd_rrm_nr_get_own(struct ubus_context *ctx, struct ubus_object *obj,
         struct ubus_request_data *req, const char *method,
         struct blob_attr *msg)
{
 struct hostapd_data *hapd = get_hapd_from_object(obj);
 struct hostapd_neighbor_entry *nr;
 void *c;

 hostapd_rrm_nr_enable(hapd);

 nr = hostapd_neighbor_get(hapd, hapd->own_addr, ((void*)0));
 if (!nr)
  return UBUS_STATUS_NOT_FOUND;

 blob_buf_init(&b, 0);

 c = blobmsg_open_array(&b, "value");
 hostapd_rrm_print_nr(nr);
 blobmsg_close_array(&b, c);

 ubus_send_reply(ctx, req, b.head);

 return 0;
}
