
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;


 scalar_t__ dabs (int) ;

int sladiv_(real *a, real *b, real *c__, real *d__, real *p,
 real *q)
{
    static real e, f;
    if (dabs(*d__) < dabs(*c__)) {
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
