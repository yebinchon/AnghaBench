
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_iface {int dummy; } ;


 int hostapd_ubus_init () ;

void hostapd_ubus_add_iface(struct hostapd_iface *iface)
{
 if (!hostapd_ubus_init())
  return;
}
