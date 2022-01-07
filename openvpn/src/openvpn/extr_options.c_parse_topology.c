
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TOP_NET30 ;
 int TOP_P2P ;
 int TOP_SUBNET ;
 int TOP_UNDEF ;
 int msg (int const,char*) ;
 scalar_t__ streq (char const*,char*) ;

int
parse_topology(const char *str, const int msglevel)
{
    if (streq(str, "net30"))
    {
        return TOP_NET30;
    }
    else if (streq(str, "p2p"))
    {
        return TOP_P2P;
    }
    else if (streq(str, "subnet"))
    {
        return TOP_SUBNET;
    }
    else
    {
        msg(msglevel, "--topology must be net30, p2p, or subnet");
        return TOP_UNDEF;
    }
}
