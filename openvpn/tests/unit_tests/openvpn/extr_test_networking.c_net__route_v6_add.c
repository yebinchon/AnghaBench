
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;


 int AF_INET6 ;
 char* iface ;
 int inet_pton (int ,char const*,struct in6_addr*) ;
 int net_route_v6_add (int *,struct in6_addr*,int,int *,char*,int ,int) ;
 int printf (char*,...) ;

__attribute__((used)) static int
net__route_v6_add(const char *dst_str, int prefixlen, int metric)
{
    struct in6_addr dst;
    int ret;

    if (!dst_str)
        return -1;

    ret = inet_pton(AF_INET6, dst_str, &dst);
    if (ret != 1)
        return -1;

    printf("CMD: ip -6 route add %s/%d dev %s", dst_str, prefixlen, iface);
    if (metric > 0)
        printf(" metric %d", metric);
    printf("\n");

    return net_route_v6_add(((void*)0), &dst, prefixlen, ((void*)0), iface, 0, metric);

}
