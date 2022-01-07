
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int index; unsigned int ellision_index; int * tmp; int begin; int end; scalar_t__ is_second; } ;
struct RangeParser {TYPE_1__ ipv6; } ;


 int memcpy (int ,int *,int) ;
 int memmove (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static unsigned
ipv6_finish_number(struct RangeParser *p, unsigned char c)
{
    unsigned index = p->ipv6.index;
    unsigned ellision = p->ipv6.ellision_index;


    if (index < 7 && ellision >= 8)
        return 1;


    memmove(
        &p->ipv6.tmp[8-(index-ellision)],
        &p->ipv6.tmp[ellision],
        sizeof(p->ipv6.tmp[0]) * (index-ellision)
        );
    memset(
        &p->ipv6.tmp[ellision],
        0,
        sizeof(p->ipv6.tmp[0]) * (7 - index)
    );


    if (p->ipv6.is_second)
        memcpy(p->ipv6.end, p->ipv6.tmp, sizeof(p->ipv6.end));
    else
        memcpy(p->ipv6.begin, p->ipv6.tmp, sizeof(p->ipv6.begin));

    return 0;
}
