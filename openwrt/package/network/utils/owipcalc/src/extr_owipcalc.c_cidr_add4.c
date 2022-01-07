
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {TYPE_1__ v4; } ;
struct cidr {scalar_t__ family; TYPE_2__ addr; } ;


 scalar_t__ AF_INET ;
 struct cidr* cidr_clone (struct cidr*) ;
 int fprintf (int ,char*) ;
 int htonl (scalar_t__) ;
 scalar_t__ ntohl (int ) ;
 int stderr ;

__attribute__((used)) static bool cidr_add4(struct cidr *a, struct cidr *b)
{
 uint32_t x = ntohl(a->addr.v4.s_addr);
 uint32_t y = ntohl(b->addr.v4.s_addr);

 struct cidr *n = cidr_clone(a);

 if ((n->family != AF_INET) || (b->family != AF_INET))
  return 0;

 if ((uint32_t)(x + y) < x)
 {
  fprintf(stderr, "overflow during 'add'\n");
  return 0;
 }

 n->addr.v4.s_addr = htonl(x + y);
 return 1;
}
