
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; void* sin6_port; int sin6_family; int member_0; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; void* sin_port; int sin_family; int member_0; } ;
typedef int addr6 ;
typedef int addr4 ;


 int AF_INET ;
 int AF_INET6 ;
 int INADDR_LOOPBACK ;
 scalar_t__ cfg_do_ipv4 ;
 scalar_t__ cfg_do_ipv6 ;
 int cfg_port ;
 int do_test (void*,int) ;
 int htonl (int ) ;
 void* htons (int ) ;
 int in6addr_loopback ;
 int parse_opts (int,char**) ;

int main(int argc, char **argv)
{
 parse_opts(argc, argv);

 if (cfg_do_ipv6) {
  struct sockaddr_in6 addr6 = {0};

  addr6.sin6_family = AF_INET6;
  addr6.sin6_port = htons(cfg_port);
  addr6.sin6_addr = in6addr_loopback;
  do_test((void *)&addr6, sizeof(addr6));
 }

 if (cfg_do_ipv4) {
  struct sockaddr_in addr4 = {0};

  addr4.sin_family = AF_INET;
  addr4.sin_port = htons(cfg_port);
  addr4.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
  do_test((void *)&addr4, sizeof(addr4));
 }

 return 0;
}
