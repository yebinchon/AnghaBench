
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acos (double) ;
 double to_signed_nan (int ) ;

__attribute__((used)) static double pres_acos(double *args, int n) {return to_signed_nan(acos(args[0]));}
