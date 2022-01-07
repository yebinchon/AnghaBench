
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct packet {int client_addr; TYPE_2__* raw; struct interface_info* interface; } ;
struct TYPE_4__ {scalar_t__ hlen; int haddr; } ;
struct interface_info {TYPE_3__* client; TYPE_1__ hw_address; } ;
struct TYPE_6__ {scalar_t__ xid; scalar_t__ state; int * active; } ;
struct TYPE_5__ {scalar_t__ xid; scalar_t__ hlen; int chaddr; } ;


 scalar_t__ S_INIT ;
 scalar_t__ S_REBINDING ;
 scalar_t__ S_REBOOTING ;
 scalar_t__ S_RENEWING ;
 scalar_t__ S_REQUESTING ;
 int cancel_timeout (int ,struct interface_info*) ;
 int free_client_lease (int *) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 int note (char*,...) ;
 int piaddr (int ) ;
 int send_request ;
 int state_init (struct interface_info*) ;

void
dhcpnak(struct packet *packet)
{
 struct interface_info *ip = packet->interface;



 if (packet->interface->client->xid != packet->raw->xid ||
     (packet->interface->hw_address.hlen != packet->raw->hlen) ||
     (memcmp(packet->interface->hw_address.haddr,
     packet->raw->chaddr, packet->raw->hlen)))
  return;

 if (ip->client->state != S_REBOOTING &&
     ip->client->state != S_REQUESTING &&
     ip->client->state != S_RENEWING &&
     ip->client->state != S_REBINDING)
  return;

 note("DHCPNAK from %s", piaddr(packet->client_addr));

 if (!ip->client->active) {
  note("DHCPNAK with no active lease.\n");
  return;
 }

 free_client_lease(ip->client->active);
 ip->client->active = ((void*)0);


 cancel_timeout(send_request, ip);

 ip->client->state = S_INIT;
 state_init(ip);
}
