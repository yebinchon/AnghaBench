
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;


 int AF_INET6 ;
 char* iface ;
 int inet_pton (int ,char const*,struct in6_addr*) ;
 int net_addr_v6_add (int *,char*,struct in6_addr*,int) ;
 int printf (char*,char const*,int,char*) ;

__attribute__((used)) static int
net__addr_v6_add(const char *addr_str, int prefixlen)
{
    struct in6_addr addr;
    int ret;

    ret = inet_pton(AF_INET6, addr_str, &addr);
    if (ret != 1)
        return -1;

    printf("CMD: ip -6 addr add %s/%d dev %s\n", addr_str, prefixlen, iface);

    return net_addr_v6_add(((void*)0), iface, &addr, prefixlen);
}
