
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct packet {int packet_type; int client_addr; TYPE_3__* interface; } ;
struct iaddrlist {int addr; struct iaddrlist* next; } ;
struct TYPE_6__ {TYPE_2__* client; } ;
struct TYPE_5__ {TYPE_1__* config; } ;
struct TYPE_4__ {struct iaddrlist* reject_list; } ;





 scalar_t__ addr_eq (int ,int ) ;
 void dhcpack (struct packet*) ;
 void dhcpnak (struct packet*) ;
 void dhcpoffer (struct packet*) ;
 int note (char*,char*,int ) ;
 int piaddr (int ) ;
 void stub1 (struct packet*) ;

void
dhcp(struct packet *packet)
{
 struct iaddrlist *ap;
 void (*handler)(struct packet *);
 char *type;

 switch (packet->packet_type) {
 case 128:
  handler = dhcpoffer;
  type = "DHCPOFFER";
  break;
 case 129:
  handler = dhcpnak;
  type = "DHCPNACK";
  break;
 case 130:
  handler = dhcpack;
  type = "DHCPACK";
  break;
 default:
  return;
 }



 for (ap = packet->interface->client->config->reject_list;
     ap; ap = ap->next) {
  if (addr_eq(packet->client_addr, ap->addr)) {
   note("%s from %s rejected.", type, piaddr(ap->addr));
   return;
  }
 }
 (*handler)(packet);
}
