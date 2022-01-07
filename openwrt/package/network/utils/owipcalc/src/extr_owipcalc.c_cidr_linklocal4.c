
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {TYPE_1__ v4; } ;
struct cidr {TYPE_2__ addr; } ;


 int ntohl (int ) ;
 scalar_t__ printed ;
 int qprintf (char*) ;

__attribute__((used)) static bool cidr_linklocal4(struct cidr *a)
{
 uint32_t x = ntohl(a->addr.v4.s_addr);

 if (printed)
  qprintf(" ");

 if ((x >= 0xA9FE0000) && (x <= 0xA9FEFFFF))
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
