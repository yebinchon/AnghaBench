
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lo; scalar_t__ hi; } ;
typedef TYPE_1__ ipv6address ;



__attribute__((used)) static ipv6address PLUS_ONE(const ipv6address ip)
{
    ipv6address result;

    if (ip.lo == ~0) {
        result.hi = ip.hi + 1;
        result.lo = 0;
    } else {
        result.hi = ip.hi;
        result.lo = ip.lo + 1;
    }

    return result;
}
