
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int in_addr_t ;


 int AF_INET ;
 char* iface ;
 int inet_pton (int ,char const*,int *) ;
 int net_addr_v4_add (int *,char*,int *,int) ;
 int ntohl (int ) ;
 int printf (char*,char const*,int,char*) ;

__attribute__((used)) static int
net__addr_v4_add(const char *addr_str, int prefixlen)
{
    in_addr_t addr;
    int ret;

    ret = inet_pton(AF_INET, addr_str, &addr);
    if (ret != 1)
        return -1;

    addr = ntohl(addr);

    printf("CMD: ip addr add %s/%d dev %s\n", addr_str, prefixlen, iface);

    return net_addr_v4_add(((void*)0), iface, &addr, prefixlen);
}
