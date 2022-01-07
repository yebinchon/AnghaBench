
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dbus_sleep_info {scalar_t__ id; int type; int c; int * pending; TYPE_1__* service; } ;
typedef int dbus_uint32_t ;
typedef scalar_t__ dbus_bool_t ;
struct TYPE_2__ {char* uninhibit; int name; int path; } ;
typedef int DBusMessage ;


 int DBUS_TYPE_INVALID ;
 int DBUS_TYPE_STRING ;
 int DBUS_TYPE_UINT32 ;

 int LOG_ERROR ;

 int assert (int) ;
 int blog (int ,char*) ;
 int dbus_connection_flush (int ) ;
 scalar_t__ dbus_connection_send (int ,int *,int *) ;
 scalar_t__ dbus_connection_send_with_reply (int ,int *,int **,int) ;
 scalar_t__ dbus_message_append_args (int *,int ,...) ;
 scalar_t__ dbus_message_get_args (int *,int *,int ,scalar_t__*,int ) ;
 int * dbus_message_new_method_call (int ,int ,int ,char const*) ;
 int dbus_message_unref (int *) ;
 int dbus_pending_call_block (int *) ;
 int * dbus_pending_call_steal_reply (int *) ;
 int dbus_pending_call_unref (int *) ;

void dbus_inhibit_sleep(struct dbus_sleep_info *info, const char *reason,
   bool active)
{
 DBusMessage *reply;
 const char *method;
 dbus_bool_t success;

 if (info->pending) {

  dbus_pending_call_block(info->pending);
  reply = dbus_pending_call_steal_reply(info->pending);
  dbus_pending_call_unref(info->pending);
  info->pending = ((void*)0);

  if (reply) {
   success = dbus_message_get_args(reply, ((void*)0),
       DBUS_TYPE_UINT32,
       &info->id,
       DBUS_TYPE_INVALID);
   if (!success)
    info->id = 0;
   dbus_message_unref(reply);
  }
 }

 if (active == !!info->id)
  return;

 method = active ? "Inhibit" : info->service->uninhibit;

 reply = dbus_message_new_method_call(info->service->name,
          info->service->path,
          info->service->name, method);
 if (reply == ((void*)0)) {
  blog(LOG_ERROR, "dbus_message_new_method_call failed");
  return;
 }

 if (active) {
  const char *program = "libobs";
  dbus_uint32_t flags = 0xC;
  dbus_uint32_t xid = 0;

  assert(info->id == 0);

  switch (info->type) {
  case 128:
  case 129:
   success = dbus_message_append_args(
    reply, DBUS_TYPE_STRING, &program,
    DBUS_TYPE_UINT32, &xid, DBUS_TYPE_STRING,
    &reason, DBUS_TYPE_UINT32, &flags,
    DBUS_TYPE_INVALID);
   break;
  default:
   success = dbus_message_append_args(
    reply, DBUS_TYPE_STRING, &program,
    DBUS_TYPE_STRING, &reason, DBUS_TYPE_INVALID);
  }

  if (success) {
   success = dbus_connection_send_with_reply(
    info->c, reply, &info->pending, -1);
   if (!success)
    info->pending = ((void*)0);
  }
 } else {
  assert(info->id != 0);
  success = dbus_message_append_args(
   reply, DBUS_TYPE_UINT32, &info->id, DBUS_TYPE_INVALID);
  if (success)
   success = dbus_connection_send(info->c, reply, ((void*)0));
  if (!success)
   info->id = 0;
 }

 dbus_connection_flush(info->c);
 dbus_message_unref(reply);
}
