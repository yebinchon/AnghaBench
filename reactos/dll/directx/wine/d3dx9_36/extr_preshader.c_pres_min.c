
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double fmin (double,double) ;

__attribute__((used)) static double pres_min(double *args, int n) {return fmin(args[0], args[1]);}
