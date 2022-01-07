
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_set {int dummy; } ;
struct argv {int dummy; } ;


 int IFCONFIG_PATH ;
 int M_INFO ;
 int M_WARN ;
 int argv_msg (int ,struct argv*) ;
 struct argv argv_new () ;
 int argv_printf (struct argv*,char*,int ,char const*,char const*) ;
 int argv_reset (struct argv*) ;
 int iproute_path ;
 int msg (int ,char*,...) ;
 int openvpn_execve_check (struct argv*,struct env_set const*,int ,char*) ;

int
set_lladdr(const char *ifname, const char *lladdr,
           const struct env_set *es)
{
    struct argv argv = argv_new();
    int r;

    if (!ifname || !lladdr)
    {
        return -1;
    }
    msg(M_WARN, "Sorry, but I don't know how to configure link layer addresses on this operating system.");
    return -1;


    argv_msg(M_INFO, &argv);
    r = openvpn_execve_check(&argv, es, M_WARN, "ERROR: Unable to set link layer address.");
    if (r)
    {
        msg(M_INFO, "TUN/TAP link layer address set to %s", lladdr);
    }

    argv_reset(&argv);
    return r;
}
