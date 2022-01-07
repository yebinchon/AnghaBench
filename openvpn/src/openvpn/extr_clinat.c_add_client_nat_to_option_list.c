
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client_nat_option_list {int dummy; } ;
struct client_nat_entry {void* foreign_network; void* netmask; void* network; int type; } ;


 int CN_DNAT ;
 int CN_SNAT ;
 int add_entry (struct client_nat_option_list*,struct client_nat_entry*) ;
 void* getaddr (int ,char const*,int ,int*,int *) ;
 int msg (int,char*,...) ;
 int strcmp (char const*,char*) ;

void
add_client_nat_to_option_list(struct client_nat_option_list *dest,
                              const char *type,
                              const char *network,
                              const char *netmask,
                              const char *foreign_network,
                              int msglevel)
{
    struct client_nat_entry e;
    bool ok;

    if (!strcmp(type, "snat"))
    {
        e.type = CN_SNAT;
    }
    else if (!strcmp(type, "dnat"))
    {
        e.type = CN_DNAT;
    }
    else
    {
        msg(msglevel, "client-nat: type must be 'snat' or 'dnat'");
        return;
    }

    e.network = getaddr(0, network, 0, &ok, ((void*)0));
    if (!ok)
    {
        msg(msglevel, "client-nat: bad network: %s", network);
        return;
    }
    e.netmask = getaddr(0, netmask, 0, &ok, ((void*)0));
    if (!ok)
    {
        msg(msglevel, "client-nat: bad netmask: %s", netmask);
        return;
    }
    e.foreign_network = getaddr(0, foreign_network, 0, &ok, ((void*)0));
    if (!ok)
    {
        msg(msglevel, "client-nat: bad foreign network: %s", foreign_network);
        return;
    }

    add_entry(dest, &e);
}
