
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double floor (double) ;

__attribute__((used)) static double pres_frc(double *args, int n) {return args[0] - floor(args[0]);}
