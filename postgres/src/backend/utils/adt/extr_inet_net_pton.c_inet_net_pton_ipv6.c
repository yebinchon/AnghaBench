
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int inet_cidr_pton_ipv6 (char const*,int *,int) ;

__attribute__((used)) static int
inet_net_pton_ipv6(const char *src, u_char *dst)
{
 return inet_cidr_pton_ipv6(src, dst, 16);
}
