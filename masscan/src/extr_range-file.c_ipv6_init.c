
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RangeParser {int ipv6; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void
ipv6_init(struct RangeParser *p)
{
    memset(&p->ipv6, 0, sizeof(p->ipv6));
}
