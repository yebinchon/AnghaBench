
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _M_LN10 ;
 double log (double) ;

double log10(double x) {
    return log(x) / (double)_M_LN10;
}
