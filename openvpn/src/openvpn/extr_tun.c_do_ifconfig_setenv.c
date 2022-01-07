
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap {int netbits_ipv6; int remote_ipv6; int local_ipv6; scalar_t__ did_ifconfig_ipv6_setup; scalar_t__ did_ifconfig_setup; int remote_netmask; int local; } ;
struct gc_arena {int dummy; } ;
struct env_set {int dummy; } ;


 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int is_tun_p2p (struct tuntap const*) ;
 char* print_in6_addr (int ,int ,struct gc_arena*) ;
 char* print_in_addr_t (int ,int ,struct gc_arena*) ;
 int setenv_int (struct env_set*,char*,int ) ;
 int setenv_str (struct env_set*,char*,char const*) ;

void
do_ifconfig_setenv(const struct tuntap *tt, struct env_set *es)
{
    struct gc_arena gc = gc_new();
    const char *ifconfig_local = print_in_addr_t(tt->local, 0, &gc);
    const char *ifconfig_remote_netmask = print_in_addr_t(tt->remote_netmask, 0, &gc);




    if (tt->did_ifconfig_setup)
    {
        bool tun = is_tun_p2p(tt);

        setenv_str(es, "ifconfig_local", ifconfig_local);
        if (tun)
        {
            setenv_str(es, "ifconfig_remote", ifconfig_remote_netmask);
        }
        else
        {
            setenv_str(es, "ifconfig_netmask", ifconfig_remote_netmask);
        }
    }

    if (tt->did_ifconfig_ipv6_setup)
    {
        const char *ifconfig_ipv6_local = print_in6_addr(tt->local_ipv6, 0, &gc);
        const char *ifconfig_ipv6_remote = print_in6_addr(tt->remote_ipv6, 0, &gc);

        setenv_str(es, "ifconfig_ipv6_local", ifconfig_ipv6_local);
        setenv_int(es, "ifconfig_ipv6_netbits", tt->netbits_ipv6);
        setenv_str(es, "ifconfig_ipv6_remote", ifconfig_ipv6_remote);
    }

    gc_free(&gc);
}
