
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct broadif {int index; } ;


 int AF_INET6 ;
 int IPPROTO_IPV6 ;
 int IPV6_MULTICAST_IF ;
 scalar_t__ SOCKET_ERROR ;
 int SOL_SOCKET ;
 int SO_BROADCAST ;
 int fprintf (int ,char*,int) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int stderr ;

int

__rpc_broadenable(int af, int s, struct broadif *bip)
{
 int o = 1;
  if (setsockopt(s, SOL_SOCKET, SO_BROADCAST, &o, sizeof o) == SOCKET_ERROR)
   return -1;

 return 0;
}
