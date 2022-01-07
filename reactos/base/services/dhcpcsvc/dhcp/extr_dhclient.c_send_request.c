
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct in_addr {int s_addr; } ;
struct TYPE_17__ {struct in_addr s_addr; } ;
struct sockaddr_in {void* sin_port; TYPE_8__ sin_addr; int sin_family; } ;
struct interface_info {TYPE_5__* client; int name; } ;
typedef int from ;
typedef int destination ;
struct TYPE_16__ {void* secs; } ;
struct TYPE_15__ {scalar_t__ NteContext; } ;
struct TYPE_11__ {int iabuf; } ;
struct TYPE_14__ {scalar_t__ first_sending; scalar_t__ state; int interval; int packet_length; TYPE_7__ packet; void* secs; TYPE_4__* active; TYPE_2__ destination; TYPE_1__* config; scalar_t__ medium; } ;
struct TYPE_12__ {int iabuf; } ;
struct TYPE_13__ {scalar_t__ expiry; scalar_t__ rebind; TYPE_3__ address; scalar_t__ medium; } ;
struct TYPE_10__ {int reboot_timeout; int initial_interval; int backoff_cutoff; } ;
typedef TYPE_6__* PDHCP_ADAPTER ;


 int AF_INET ;
 TYPE_6__* AdapterFindInfo (struct interface_info*) ;
 int DeleteIPAddress (scalar_t__) ;
 int INADDR_ANY ;
 struct in_addr INADDR_BROADCAST ;
 int REMOTE_PORT ;
 void* S_INIT ;
 scalar_t__ S_REBOOTING ;
 scalar_t__ S_REQUESTING ;
 int add_timeout (scalar_t__,void (*) (void*),struct interface_info*) ;
 int cancel_timeout (void (*) (void*),struct interface_info*) ;
 void* htons (int) ;
 int inet_ntoa (TYPE_8__) ;
 int memcpy (struct in_addr*,int ,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int note (char*,int ,int ,int ) ;
 int ntohs (void*) ;
 int rand () ;
 int send_packet (struct interface_info*,TYPE_7__*,int ,struct in_addr,struct sockaddr_in*,int *) ;
 int state_init (struct interface_info*) ;
 int time (scalar_t__*) ;

void
send_request(void *ipp)
{
 struct interface_info *ip = ipp;
 struct sockaddr_in destination;
 struct in_addr from;
 int interval;
        time_t cur_time;

        time(&cur_time);


 interval = cur_time - ip->client->first_sending;
 if ((ip->client->state == S_REBOOTING ||
     ip->client->state == S_REQUESTING) &&
     interval > ip->client->config->reboot_timeout) {
  ip->client->state = S_INIT;
  cancel_timeout(send_request, ip);
  state_init(ip);
  return;
 }



 if (ip->client->state == S_REBOOTING &&
     !ip->client->medium &&
     ip->client->active->medium ) {




  ip->client->medium = ip->client->active->medium;
 }



 if (ip->client->state != S_REQUESTING &&
     cur_time > ip->client->active->expiry) {
            PDHCP_ADAPTER Adapter = AdapterFindInfo( ip );





            if( Adapter )
            {
                DeleteIPAddress( Adapter->NteContext );
                Adapter->NteContext = 0;
            }

            ip->client->state = S_INIT;
            state_init(ip);
            return;
 }


 if (!ip->client->interval)
  ip->client->interval = ip->client->config->initial_interval;
 else
  ip->client->interval += ((rand() >> 2) %
      (2 * ip->client->interval));


 if (ip->client->interval >
     ip->client->config->backoff_cutoff)
  ip->client->interval =
      ((ip->client->config->backoff_cutoff / 2) +
      ((rand() >> 2) % ip->client->interval));



 if (ip->client->state != S_REQUESTING &&
     cur_time + ip->client->interval >
     ip->client->active->expiry)
  ip->client->interval =
      ip->client->active->expiry - cur_time + 1;



 memset(&destination, 0, sizeof(destination));
 if (ip->client->state == S_REQUESTING ||
     ip->client->state == S_REBOOTING ||
     cur_time > ip->client->active->rebind)
  destination.sin_addr.s_addr = INADDR_BROADCAST;
 else
  memcpy(&destination.sin_addr.s_addr,
      ip->client->destination.iabuf,
      sizeof(destination.sin_addr.s_addr));
 destination.sin_port = htons(REMOTE_PORT);
 destination.sin_family = AF_INET;


 if (ip->client->state != S_REQUESTING)
  memcpy(&from, ip->client->active->address.iabuf,
      sizeof(from));
 else
  from.s_addr = INADDR_ANY;


 if (ip->client->state == S_REQUESTING)
  ip->client->packet.secs = ip->client->secs;
 else {
  if (interval < 65536)
   ip->client->packet.secs = htons(interval);
  else
   ip->client->packet.secs = htons(65535);
 }

 note("DHCPREQUEST on %s to %s port %d", ip->name,
     inet_ntoa(destination.sin_addr), ntohs(destination.sin_port));


 (void) send_packet(ip, &ip->client->packet, ip->client->packet_length,
     from, &destination, ((void*)0));

 add_timeout(cur_time + ip->client->interval, send_request, ip);
}
