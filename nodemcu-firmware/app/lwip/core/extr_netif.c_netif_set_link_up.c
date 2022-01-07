
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {int flags; scalar_t__ autoip; scalar_t__ dhcp; } ;


 int NETIF_FLAG_ETHARP ;
 int NETIF_FLAG_IGMP ;
 int NETIF_FLAG_LINK_UP ;
 int NETIF_FLAG_UP ;
 int NETIF_LINK_CALLBACK (struct netif*) ;
 int autoip_network_changed (struct netif*) ;
 int dhcp_network_changed (struct netif*) ;
 int etharp_gratuitous (struct netif*) ;
 int igmp_report_groups (struct netif*) ;

void netif_set_link_up(struct netif *netif )
{
  if (!(netif->flags & NETIF_FLAG_LINK_UP)) {
    netif->flags |= NETIF_FLAG_LINK_UP;
    if (netif->flags & NETIF_FLAG_UP) {
    }
    NETIF_LINK_CALLBACK(netif);
  }
}
