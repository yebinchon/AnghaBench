
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int doublereal ;


 scalar_t__ abs (int) ;

int dladiv_(doublereal *a, doublereal *b, doublereal *c__,
 doublereal *d__, doublereal *p, doublereal *q)
{
    static doublereal e, f;
    if (abs(*d__) < abs(*c__)) {
 e = *d__ / *c__;
 f = *c__ + *d__ * e;
 *p = (*a + *b * e) / f;
 *q = (*b - *a * e) / f;
    } else {
 e = *c__ / *d__;
 f = *d__ + *c__ * e;
 *p = (*b + *a * e) / f;
 *q = (-(*a) + *b * e) / f;
    }

    return 0;



}
