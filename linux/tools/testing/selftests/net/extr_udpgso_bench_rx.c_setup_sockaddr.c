
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; void* sin6_port; void* sin6_family; } ;
struct sockaddr_in {int sin_addr; void* sin_port; void* sin_family; } ;


 void* AF_INET ;
 void* AF_INET6 ;


 int cfg_port ;
 int error (int,int ,char*,...) ;
 void* htons (int ) ;
 int inet_pton (void*,char const*,int *) ;

__attribute__((used)) static void setup_sockaddr(int domain, const char *str_addr, void *sockaddr)
{
 struct sockaddr_in6 *addr6 = (void *) sockaddr;
 struct sockaddr_in *addr4 = (void *) sockaddr;

 switch (domain) {
 case 129:
  addr4->sin_family = AF_INET;
  addr4->sin_port = htons(cfg_port);
  if (inet_pton(AF_INET, str_addr, &(addr4->sin_addr)) != 1)
   error(1, 0, "ipv4 parse error: %s", str_addr);
  break;
 case 128:
  addr6->sin6_family = AF_INET6;
  addr6->sin6_port = htons(cfg_port);
  if (inet_pton(AF_INET6, str_addr, &(addr6->sin6_addr)) != 1)
   error(1, 0, "ipv6 parse error: %s", str_addr);
  break;
 default:
  error(1, 0, "illegal domain");
 }
}
