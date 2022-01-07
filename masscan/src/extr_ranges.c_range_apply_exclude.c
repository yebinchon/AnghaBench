
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Range {int begin; int end; } ;


 int assert (int) ;

__attribute__((used)) static void
range_apply_exclude(const struct Range exclude, struct Range *target, struct Range *split)
{

    split->begin = 2;
    split->end = 1;


    if (target->begin > exclude.end || target->end < exclude.begin) {
        return;
    }


    if (target->begin >= exclude.begin && target->end <= exclude.end) {
        target->begin = 2;
        target->end = 1;
        return;
    }


    if (target->begin >= exclude.begin && target->end > exclude.end) {
        target->begin = exclude.end + 1;
        return;
    }


    if (target->begin < exclude.begin && target->end <= exclude.end) {
        target->end = exclude.begin - 1;
        return;
    }


    if (target->begin < exclude.begin && target->end > exclude.end) {
        split->end = target->end;
        split->begin = exclude.end + 1;
        target->end = exclude.begin - 1;
        return;
    }


    assert(!"possible");
}
