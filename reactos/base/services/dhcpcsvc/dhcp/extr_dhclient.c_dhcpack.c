
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int time_t ;
struct packet {int client_addr; TYPE_2__* raw; struct interface_info* interface; } ;
struct TYPE_5__ {scalar_t__ hlen; int haddr; } ;
struct interface_info {TYPE_4__* client; TYPE_1__ hw_address; } ;
struct client_lease {int expiry; int renewal; int rebind; int obtained; TYPE_3__* options; } ;
struct TYPE_8__ {scalar_t__ xid; scalar_t__ state; struct client_lease* new; } ;
struct TYPE_7__ {scalar_t__ data; scalar_t__ len; } ;
struct TYPE_6__ {scalar_t__ xid; scalar_t__ hlen; int chaddr; } ;


 int DHCP_DEFAULT_LEASE_TIME ;
 size_t DHO_DHCP_LEASE_TIME ;
 size_t DHO_DHCP_REBINDING_TIME ;
 size_t DHO_DHCP_RENEWAL_TIME ;
 scalar_t__ S_REBINDING ;
 scalar_t__ S_REBOOTING ;
 scalar_t__ S_RENEWING ;
 scalar_t__ S_REQUESTING ;
 void* TIME_MAX ;
 int bind_lease (struct interface_info*) ;
 int cancel_timeout (int ,struct interface_info*) ;
 void* getULong (scalar_t__) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 int note (char*,...) ;
 struct client_lease* packet_to_lease (struct packet*) ;
 int piaddr (int ) ;
 int send_request ;
 int time (int*) ;

void
dhcpack(struct packet *packet)
{
 struct interface_info *ip = packet->interface;
 struct client_lease *lease;
        time_t cur_time;

        time(&cur_time);



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

 note("DHCPACK from %s", piaddr(packet->client_addr));

 lease = packet_to_lease(packet);
 if (!lease) {
  note("packet_to_lease failed.");
  return;
 }

 ip->client->new = lease;


 cancel_timeout(send_request, ip);


 if (ip->client->new->options[DHO_DHCP_LEASE_TIME].data)
  ip->client->new->expiry = getULong(
      ip->client->new->options[DHO_DHCP_LEASE_TIME].data);
 else
  ip->client->new->expiry = DHCP_DEFAULT_LEASE_TIME;


 if (ip->client->new->expiry < 0)
  ip->client->new->expiry = TIME_MAX;

 if (ip->client->new->expiry < 60)
  ip->client->new->expiry = 60;



 if (ip->client->new->options[DHO_DHCP_RENEWAL_TIME].len)
  ip->client->new->renewal = getULong(
      ip->client->new->options[DHO_DHCP_RENEWAL_TIME].data);
 else
  ip->client->new->renewal = ip->client->new->expiry / 2;


 if (ip->client->new->options[DHO_DHCP_REBINDING_TIME].len)
  ip->client->new->rebind = getULong(
      ip->client->new->options[DHO_DHCP_REBINDING_TIME].data);
 else
  ip->client->new->rebind = ip->client->new->renewal +
      ip->client->new->renewal / 2 + ip->client->new->renewal / 4;




 ip->client->new->expiry += cur_time;

 if (ip->client->new->expiry < cur_time)
  ip->client->new->expiry = TIME_MAX;
 ip->client->new->renewal += cur_time;
 if (ip->client->new->renewal < cur_time)
  ip->client->new->renewal = TIME_MAX;
 ip->client->new->rebind += cur_time;
 if (ip->client->new->rebind < cur_time)
  ip->client->new->rebind = TIME_MAX;

 bind_lease(ip);
}
