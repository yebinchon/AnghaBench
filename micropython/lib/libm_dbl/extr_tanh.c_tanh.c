
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double expm1 (int) ;

double tanh(double x) {
    int sign = 0;
    if (x < 0) {
        sign = 1;
        x = -x;
    }
    x = expm1(-2 * x);
    x = x / (x + 2);
    return sign ? x : -x;
}
