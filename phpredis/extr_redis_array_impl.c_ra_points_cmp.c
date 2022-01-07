
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ value; } ;
typedef TYPE_1__ ContinuumPoint ;



__attribute__((used)) static int
ra_points_cmp(const void *v1, const void *v2)
{
    const ContinuumPoint *p1 = v1, *p2 = v2;

    return p1->value < p2->value ? - 1 : p1->value > p2->value;
}
