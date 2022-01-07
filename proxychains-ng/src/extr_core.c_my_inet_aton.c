
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_family; int sin6_addr; } ;
struct sockaddr_in {int sin_addr; int sin_family; } ;
struct addrinfo_data {int sockaddr_space; } ;


 int AF_INET ;
 int AF_INET6 ;
 int inet_aton (char const*,int *) ;
 int inet_pton (int ,char const*,int *) ;
 int looks_like_numeric_ipv6 (char const*) ;

__attribute__((used)) static int my_inet_aton(const char *node, struct addrinfo_data* space)
{
 int ret;
 ((struct sockaddr_in *) &space->sockaddr_space)->sin_family = AF_INET;
 ret = inet_aton(node, &((struct sockaddr_in *) &space->sockaddr_space)->sin_addr);
 if(ret || !looks_like_numeric_ipv6(node)) return ret;
 ret = inet_pton(AF_INET6, node, &((struct sockaddr_in6 *) &space->sockaddr_space)->sin6_addr);
 if(ret) ((struct sockaddr_in6 *) &space->sockaddr_space)->sin6_family = AF_INET6;
 return ret;
}
