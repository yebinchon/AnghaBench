
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int key; } ;
struct ubus_banned_client {TYPE_2__ avl; int addr; } ;
struct TYPE_3__ {int banned; } ;
struct hostapd_data {TYPE_1__ ubus; } ;


 int avl ;
 struct ubus_banned_client* avl_find_element (int *,int *,struct ubus_banned_client*,int ) ;
 int avl_insert (int *,TYPE_2__*) ;
 int eloop_cancel_timeout (int (*) (struct ubus_banned_client*,struct hostapd_data*),struct ubus_banned_client*,struct hostapd_data*) ;
 int eloop_register_timeout (int ,int,int (*) (struct ubus_banned_client*,struct hostapd_data*),struct ubus_banned_client*,struct hostapd_data*) ;
 int hostapd_bss_del_ban (struct ubus_banned_client*,struct hostapd_data*) ;
 int memcpy (int ,int *,int) ;
 struct ubus_banned_client* os_zalloc (int) ;

__attribute__((used)) static void
hostapd_bss_ban_client(struct hostapd_data *hapd, u8 *addr, int time)
{
 struct ubus_banned_client *ban;

 if (time < 0)
  time = 0;

 ban = avl_find_element(&hapd->ubus.banned, addr, ban, avl);
 if (!ban) {
  if (!time)
   return;

  ban = os_zalloc(sizeof(*ban));
  memcpy(ban->addr, addr, sizeof(ban->addr));
  ban->avl.key = ban->addr;
  avl_insert(&hapd->ubus.banned, &ban->avl);
 } else {
  eloop_cancel_timeout(hostapd_bss_del_ban, ban, hapd);
  if (!time) {
   hostapd_bss_del_ban(ban, hapd);
   return;
  }
 }

 eloop_register_timeout(0, time * 1000, hostapd_bss_del_ban, ban, hapd);
}
