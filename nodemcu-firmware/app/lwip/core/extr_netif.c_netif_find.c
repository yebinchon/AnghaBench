
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8_t ;
struct netif {char num; char* name; struct netif* next; } ;


 int LWIP_DEBUGF (int ,char*) ;
 int NETIF_DEBUG ;
 struct netif* netif_list ;

struct netif *
netif_find(char *name)
{
  struct netif *netif;
  u8_t num;

  if (name == ((void*)0)) {
    return ((void*)0);
  }

  num = name[2] - '0';

  for(netif = netif_list; netif != ((void*)0); netif = netif->next) {
    if (num == netif->num &&
       name[0] == netif->name[0] &&
       name[1] == netif->name[1]) {
      LWIP_DEBUGF(NETIF_DEBUG, ("netif_find: found %c%c\n", name[0], name[1]));
      return netif;
    }
  }
  LWIP_DEBUGF(NETIF_DEBUG, ("netif_find: didn't find %c%c\n", name[0], name[1]));
  return ((void*)0);
}
