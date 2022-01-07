
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct in6_addr {size_t* s6_addr; } ;
struct TYPE_2__ {struct in6_addr v6; } ;
struct cidr {scalar_t__ family; TYPE_1__ addr; } ;


 scalar_t__ AF_INET6 ;
 struct cidr* cidr_clone (struct cidr*) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static bool cidr_add6(struct cidr *a, struct cidr *b)
{
 uint8_t idx = 15, carry = 0, overflow = 0;

 struct cidr *n = cidr_clone(a);
 struct in6_addr *x = &n->addr.v6;
 struct in6_addr *y = &b->addr.v6;

 if ((a->family != AF_INET6) || (b->family != AF_INET6))
  return 0;

 do {
  overflow = !!((x->s6_addr[idx] + y->s6_addr[idx] + carry) >= 256);
  x->s6_addr[idx] += y->s6_addr[idx] + carry;
  carry = overflow;
 }
 while (idx-- > 0);

 if (carry)
 {
  fprintf(stderr, "overflow during 'add'\n");
  return 0;
 }

 return 1;
}
