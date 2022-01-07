
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct interface_info {TYPE_1__* client; } ;
struct client_lease {struct client_lease* next; } ;
struct TYPE_2__ {struct client_lease* active; struct client_lease* leases; } ;


 int error (char*,int ) ;
 int fflush (scalar_t__) ;
 scalar_t__ fopen (int ,char*) ;
 scalar_t__ leaseFile ;
 int path_dhclient_db ;
 int rewind (scalar_t__) ;
 int write_client_lease (struct interface_info*,struct client_lease*,int) ;

void
rewrite_client_leases(struct interface_info *ifi)
{
 struct client_lease *lp;

 if (!leaseFile) {
  leaseFile = fopen(path_dhclient_db, "w");
  if (!leaseFile)
   error("can't create %s", path_dhclient_db);
 } else {
  fflush(leaseFile);
  rewind(leaseFile);
 }

 for (lp = ifi->client->leases; lp; lp = lp->next)
  write_client_lease(ifi, lp, 1);
 if (ifi->client->active)
  write_client_lease(ifi, ifi->client->active, 1);

 fflush(leaseFile);
}
