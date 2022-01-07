
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
struct client_nat_option_list {int n; struct client_nat_entry* entries; } ;
struct client_nat_entry {int foreign_network; int netmask; int network; int type; } ;


 int IA_NET_ORDER ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int,char*,...) ;
 int print_in_addr_t (int ,int ,struct gc_arena*) ;

void
print_client_nat_list(const struct client_nat_option_list *list, int msglevel)
{
    struct gc_arena gc = gc_new();
    int i;

    msg(msglevel, "*** CNAT list");
    if (list)
    {
        for (i = 0; i < list->n; ++i)
        {
            const struct client_nat_entry *e = &list->entries[i];
            msg(msglevel, "  CNAT[%d] t=%d %s/%s/%s",
                i,
                e->type,
                print_in_addr_t(e->network, IA_NET_ORDER, &gc),
                print_in_addr_t(e->netmask, IA_NET_ORDER, &gc),
                print_in_addr_t(e->foreign_network, IA_NET_ORDER, &gc));
        }
    }
    gc_free(&gc);
}
