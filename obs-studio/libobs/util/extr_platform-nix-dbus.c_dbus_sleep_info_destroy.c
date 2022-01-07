
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbus_sleep_info {int c; scalar_t__ pending; } ;


 int bfree (struct dbus_sleep_info*) ;
 int dbus_connection_close (int ) ;
 int dbus_connection_unref (int ) ;
 int dbus_pending_call_cancel (scalar_t__) ;
 int dbus_pending_call_unref (scalar_t__) ;

void dbus_sleep_info_destroy(struct dbus_sleep_info *info)
{
 if (info) {
  if (info->pending) {
   dbus_pending_call_cancel(info->pending);
   dbus_pending_call_unref(info->pending);
  }

  dbus_connection_close(info->c);
  dbus_connection_unref(info->c);
  bfree(info);
 }
}
