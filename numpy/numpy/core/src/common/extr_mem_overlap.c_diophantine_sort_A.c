
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ npy_int64 ;
struct TYPE_2__ {scalar_t__ a; } ;
typedef TYPE_1__ diophantine_term_t ;



__attribute__((used)) static int
diophantine_sort_A(const void *xp, const void *yp)
{
    npy_int64 xa = ((diophantine_term_t*)xp)->a;
    npy_int64 ya = ((diophantine_term_t*)yp)->a;

    if (xa < ya) {
        return 1;
    }
    else if (ya < xa) {
        return -1;
    }
    else {
        return 0;
    }
}
