
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double* params; } ;
typedef TYPE_1__ params ;



__attribute__((used)) static double cubic_bc(params *p, double x)
{
    double b = p->params[0],
           c = p->params[1];
    double p0 = (6.0 - 2.0 * b) / 6.0,
           p2 = (-18.0 + 12.0 * b + 6.0 * c) / 6.0,
           p3 = (12.0 - 9.0 * b - 6.0 * c) / 6.0,
           q0 = (8.0 * b + 24.0 * c) / 6.0,
           q1 = (-12.0 * b - 48.0 * c) / 6.0,
           q2 = (6.0 * b + 30.0 * c) / 6.0,
           q3 = (-b - 6.0 * c) / 6.0;

    if (x < 1.0) {
        return p0 + x * x * (p2 + x * p3);
    } else if (x < 2.0) {
        return q0 + x * (q1 + x * (q2 + x * q3));
    }
    return 0.0;
}
