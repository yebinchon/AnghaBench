
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct interface_info {TYPE_3__* client; } ;
struct TYPE_4__ {int xid; } ;
struct TYPE_6__ {TYPE_2__* config; int interval; int first_sending; int state; int destination; TYPE_1__ packet; int xid; int active; } ;
struct TYPE_5__ {int initial_interval; } ;


 int ASSERT_STATE (int ,int ) ;
 int S_INIT ;
 int S_SELECTING ;
 int iaddr_broadcast ;
 int make_discover (struct interface_info*,int ) ;
 int send_discover (struct interface_info*) ;
 int state ;
 int time (int *) ;

void
state_init(void *ipp)
{
 struct interface_info *ip = ipp;

 ASSERT_STATE(state, S_INIT);



 make_discover(ip, ip->client->active);
 ip->client->xid = ip->client->packet.xid;
 ip->client->destination = iaddr_broadcast;
 ip->client->state = S_SELECTING;
 time(&ip->client->first_sending);
 ip->client->interval = ip->client->config->initial_interval;



 send_discover(ip);
}
