
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct openvpn_iphdr {int daddr; int saddr; } ;
struct gc_arena {int dummy; } ;


 int const CN_INCOMING ;
 int const CN_OUTGOING ;
 int IA_NET_ORDER ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int const,char*,char*,char const*,int ,int ) ;
 int print_in_addr_t (int ,int ,struct gc_arena*) ;

__attribute__((used)) static void
print_pkt(struct openvpn_iphdr *iph, const char *prefix, const int direction, const int msglevel)
{
    struct gc_arena gc = gc_new();

    char *dirstr = "???";
    if (direction == CN_OUTGOING)
    {
        dirstr = "OUT";
    }
    else if (direction == CN_INCOMING)
    {
        dirstr = "IN";
    }

    msg(msglevel, "** CNAT %s %s %s -> %s",
        dirstr,
        prefix,
        print_in_addr_t(iph->saddr, IA_NET_ORDER, &gc),
        print_in_addr_t(iph->daddr, IA_NET_ORDER, &gc));

    gc_free(&gc);
}
