
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in6 {void* sin6_port; int sin6_addr; int sin6_family; void* sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr_in {void* sin6_port; int sin6_addr; int sin6_family; void* sin_port; TYPE_1__ sin_addr; int sin_family; } ;


 int AF_INET ;
 int AF_INET6 ;
 int INADDR_LOOPBACK ;


 int error (int,int ,char*) ;
 int htonl (int ) ;
 void* htons (int ) ;
 int in6addr_loopback ;
 int memset (struct sockaddr_in6*,int ,int) ;
 int port ;

__attribute__((used)) static void setup_loopback_addr(int family, struct sockaddr_storage *sockaddr)
{
 struct sockaddr_in6 *addr6 = (void *) sockaddr;
 struct sockaddr_in *addr4 = (void *) sockaddr;

 switch (family) {
 case 129:
  memset(addr4, 0, sizeof(*addr4));
  addr4->sin_family = AF_INET;
  addr4->sin_addr.s_addr = htonl(INADDR_LOOPBACK);
  addr4->sin_port = htons(port);
  break;
 case 128:
  memset(addr6, 0, sizeof(*addr6));
  addr6->sin6_family = AF_INET6;
  addr6->sin6_addr = in6addr_loopback;
  addr6->sin6_port = htons(port);
  break;
 default:
  error(1, 0, "illegal family");
 }
}
