
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int ieee_finite(double d) {
 int *p = (int *) &d;
 return ((unsigned) ((p[1] | 0x800fffff) + 1)) >> 31;
}
