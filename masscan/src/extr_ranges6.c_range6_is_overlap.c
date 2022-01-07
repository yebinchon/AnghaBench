
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct Range6 {int begin; int end; } ;
struct TYPE_4__ {int member_1; int member_0; } ;
typedef TYPE_1__ const ipv6address ;


 scalar_t__ LESS (TYPE_1__ const,int ) ;
 TYPE_1__ const MINUS_ONE (int ) ;

__attribute__((used)) static int
range6_is_overlap(const struct Range6 lhs, const struct Range6 rhs)
{
    static const ipv6address zero = {0, 0};
    ipv6address lhs_endm = MINUS_ONE(lhs.end);
    ipv6address rhs_endm = MINUS_ONE(rhs.end);


    if (LESS(zero, lhs.end) && LESS(lhs_endm, rhs.begin))
        return 0;


    if (LESS(zero, rhs.end) && LESS(rhs_endm, lhs.begin))
        return 0;

    return 1;
}
