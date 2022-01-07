
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* s6_addr; } ;
struct TYPE_4__ {TYPE_1__ v6; } ;
struct cidr {TYPE_2__ addr; } ;


 scalar_t__ printed ;
 int qprintf (char*) ;

__attribute__((used)) static bool cidr_ula6(struct cidr *a)
{
 if (printed)
  qprintf(" ");

 if ((a->addr.v6.s6_addr[0] >= 0xFC) &&
     (a->addr.v6.s6_addr[0] <= 0xFD))
 {
  qprintf("1");
  return 1;
 }
 else
 {
  qprintf("0");
  return 0;
 }
}
