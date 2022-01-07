
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double atan2 (double,double) ;

__attribute__((used)) static double pres_atan2(double *args, int n) {return atan2(args[0], args[1]);}
