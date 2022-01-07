
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cidr {scalar_t__ prefix; } ;


 scalar_t__ printed ;
 int qprintf (char*,...) ;

__attribute__((used)) static bool cidr_howmany(struct cidr *a, struct cidr *b)
{
 if (printed)
  qprintf(" ");

 if (b->prefix < a->prefix)
  qprintf("0");
 else
  qprintf("%u", 1 << (b->prefix - a->prefix));

 return 1;
}
