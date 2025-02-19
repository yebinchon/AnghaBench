
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Range {int begin; int end; } ;



__attribute__((used)) static int
range_is_overlap(struct Range lhs, struct Range rhs)
{
    if (lhs.begin < rhs.begin) {
        if (lhs.end == 0xFFFFFFFF || lhs.end + 1 >= rhs.begin)
            return 1;
    }
    if (lhs.begin >= rhs.begin) {
        if (lhs.end <= rhs.end)
            return 1;
    }

    if (rhs.begin < lhs.begin) {
        if (rhs.end == 0xFFFFFFFF || rhs.end + 1 >= lhs.begin)
            return 1;
    }
    if (rhs.begin >= lhs.begin) {
        if (rhs.end <= lhs.end)
            return 1;
    }

    return 0;
}
