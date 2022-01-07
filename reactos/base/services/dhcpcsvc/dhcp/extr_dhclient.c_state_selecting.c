
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* time_t ;
struct interface_info {TYPE_4__* client; } ;
struct client_lease {int rebind; int renewal; void* expiry; TYPE_1__* options; struct client_lease* next; } ;
struct TYPE_7__ {int xid; } ;
struct TYPE_8__ {TYPE_3__ packet; int xid; TYPE_2__* config; int interval; void* first_sending; void* state; int destination; struct client_lease* new; struct client_lease* offered_leases; } ;
struct TYPE_6__ {int initial_interval; } ;
struct TYPE_5__ {int len; } ;


 int ASSERT_STATE (int ,int ) ;
 size_t DHO_DHCP_MESSAGE_TYPE ;
 void* S_INIT ;
 void* S_REQUESTING ;
 int S_SELECTING ;
 int bind_lease (struct interface_info*) ;
 int cancel_timeout (void (*) (void*),struct interface_info*) ;
 int check_arp (struct interface_info*,struct client_lease*) ;
 int free_client_lease (struct client_lease*) ;
 int iaddr_broadcast ;
 int make_request (struct interface_info*,struct client_lease*) ;
 void send_discover (void*) ;
 int send_request (struct interface_info*) ;
 int state ;
 int state_init (struct interface_info*) ;
 int time (void**) ;

void
state_selecting(void *ipp)
{
 struct interface_info *ip = ipp;
 struct client_lease *lp, *next, *picked;
        time_t cur_time;

 ASSERT_STATE(state, S_SELECTING);

        time(&cur_time);



 cancel_timeout(state_selecting, ip);
 cancel_timeout(send_discover, ip);




 picked = ((void*)0);
 for (lp = ip->client->offered_leases; lp; lp = next) {
  next = lp->next;



  if (!picked) {
                    if( !check_arp(ip,lp) ) goto freeit;
                    picked = lp;
                    picked->next = ((void*)0);
  } else {
freeit:
   free_client_lease(lp);
  }
 }
 ip->client->offered_leases = ((void*)0);



 if (!picked) {
  ip->client->state = S_INIT;
  state_init(ip);
  return;
 }


 if (!picked->options[DHO_DHCP_MESSAGE_TYPE].len) {
  ip->client->new = picked;



  ip->client->new->expiry = cur_time + 12000;
  ip->client->new->renewal += cur_time + 8000;
  ip->client->new->rebind += cur_time + 10000;

  ip->client->state = S_REQUESTING;


  bind_lease(ip);
  return;
 }


 ip->client->destination = iaddr_broadcast;
 ip->client->state = S_REQUESTING;
 ip->client->first_sending = cur_time;
 ip->client->interval = ip->client->config->initial_interval;


 make_request(ip, picked);
 ip->client->xid = ip->client->packet.xid;


 free_client_lease(picked);


 send_request(ip);
}
