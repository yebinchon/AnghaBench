
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double fmax (double,double) ;

__attribute__((used)) static double pres_max(double *args, int n) {return fmax(args[0], args[1]);}
