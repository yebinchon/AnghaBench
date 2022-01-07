
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Range6List {unsigned int count; struct Range6* list; } ;
struct Range6 {int const end; int const begin; } ;
typedef int ipv6address ;


 scalar_t__ LESSEQ (int const,int const) ;

int
range6list_is_contains(const struct Range6List *targets, const ipv6address ip)
{
    unsigned i;

    for (i=0; i<targets->count; i++) {
        struct Range6 *range = &targets->list[i];

        if (LESSEQ(range->begin, ip) && LESSEQ(ip, range->end))
            return 1;
    }
    return 0;
}
