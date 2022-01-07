
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int hi; scalar_t__ lo; } ;
typedef TYPE_1__ ipv6address ;


 int assert (int) ;

__attribute__((used)) static uint64_t DIFF(const ipv6address lhs, const ipv6address rhs)
{

    assert(lhs.hi - rhs.hi < 2);

    if (lhs.hi > rhs.hi)
        return rhs.lo - lhs.lo;
    else
        return lhs.lo - rhs.lo;
}
