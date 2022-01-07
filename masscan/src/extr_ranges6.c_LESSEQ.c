
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ hi; scalar_t__ lo; } ;
typedef TYPE_1__ ipv6address ;



__attribute__((used)) static int
LESSEQ(const ipv6address lhs, const ipv6address rhs)
{
    if (lhs.hi <= rhs.hi)
        return 1;
    else if (lhs.hi == rhs.hi && lhs.lo <= rhs.lo)
        return 1;
    else
        return 0;
}
