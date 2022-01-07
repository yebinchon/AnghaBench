
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {char* name; } ;


 int LWIP_DEBUGF (int ,char*) ;
 int NETIF_DEBUG ;
 struct netif* netif_default ;
 int snmp_delete_iprteidx_tree (int,struct netif*) ;
 int snmp_insert_iprteidx_tree (int,struct netif*) ;

void
netif_set_default(struct netif *netif)
{
  if (netif == ((void*)0)) {

    snmp_delete_iprteidx_tree(1, netif);
  } else {

    snmp_insert_iprteidx_tree(1, netif);
  }
  netif_default = netif;
  LWIP_DEBUGF(NETIF_DEBUG, ("netif: setting default interface %c%c\n",
           netif ? netif->name[0] : '\'', netif ? netif->name[1] : '\''));
}
