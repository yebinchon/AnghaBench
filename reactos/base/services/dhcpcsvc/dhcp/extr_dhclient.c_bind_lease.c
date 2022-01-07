
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct interface_info {TYPE_1__* client; } ;
struct client_lease {scalar_t__ renewal; int address; int medium; } ;
struct TYPE_2__ {int state; struct client_lease* active; struct client_lease* new; int medium; } ;
typedef scalar_t__ PDHCP_ADAPTER ;


 scalar_t__ AdapterFindInfo (struct interface_info*) ;
 int S_BOUND ;
 int add_timeout (scalar_t__,int ,struct interface_info*) ;
 int free_client_lease (struct client_lease*) ;
 int note (char*,int ,long) ;
 int piaddr (int ) ;
 int set_domain (scalar_t__,struct client_lease*) ;
 int set_name_servers (scalar_t__,struct client_lease*) ;
 int setup_adapter (scalar_t__,struct client_lease*) ;
 int state_bound ;
 int time (scalar_t__*) ;
 int warning (char*,struct interface_info*) ;

void
bind_lease(struct interface_info *ip)
{
    PDHCP_ADAPTER Adapter;
    struct client_lease *new_lease = ip->client->new;
    time_t cur_time;

    time(&cur_time);


    ip->client->new->medium = ip->client->medium;


    if (ip->client->active)
        free_client_lease(ip->client->active);
    ip->client->active = ip->client->new;
    ip->client->new = ((void*)0);





    if( ip->client->active->renewal - cur_time )
        add_timeout(ip->client->active->renewal, state_bound, ip);

    note("bound to %s -- renewal in %ld seconds.",
         piaddr(ip->client->active->address),
         (long int)(ip->client->active->renewal - cur_time));

    ip->client->state = S_BOUND;

    Adapter = AdapterFindInfo( ip );

    if( Adapter ) setup_adapter( Adapter, new_lease );
    else {
        warning("Could not find adapter for info %p\n", ip);
        return;
    }
    set_name_servers( Adapter, new_lease );
    set_domain( Adapter, new_lease );
}
