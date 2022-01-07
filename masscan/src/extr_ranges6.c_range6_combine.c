
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Range6 {int end; int begin; } ;


 scalar_t__ LESSEQ (int ,int ) ;

__attribute__((used)) static void
range6_combine(struct Range6 *lhs, const struct Range6 rhs)
{
    if (LESSEQ(rhs.begin, lhs->begin))
        lhs->begin = rhs.begin;
    if (LESSEQ(lhs->end, rhs.end))
        lhs->end = rhs.end;
}
