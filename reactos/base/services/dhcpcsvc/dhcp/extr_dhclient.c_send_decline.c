
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct interface_info {TYPE_1__* client; int name; } ;
struct TYPE_5__ {int sin_port; int sin_addr; } ;
struct TYPE_4__ {int packet_length; int packet; } ;


 int inaddr_any ;
 int inet_ntoa (int ) ;
 int note (char*,int ,int ,int ) ;
 int ntohs (int ) ;
 int send_packet (struct interface_info*,int *,int ,int ,TYPE_2__*,int *) ;
 TYPE_2__ sockaddr_broadcast ;

void
send_decline(void *ipp)
{
 struct interface_info *ip = ipp;

 note("DHCPDECLINE on %s to %s port %d", ip->name,
     inet_ntoa(sockaddr_broadcast.sin_addr),
     ntohs(sockaddr_broadcast.sin_port));


 (void) send_packet(ip, &ip->client->packet, ip->client->packet_length,
     inaddr_any, &sockaddr_broadcast, ((void*)0));
}
