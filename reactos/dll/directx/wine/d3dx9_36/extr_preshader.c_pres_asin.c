
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asin (double) ;
 double to_signed_nan (int ) ;

__attribute__((used)) static double pres_asin(double *args, int n) {return to_signed_nan(asin(args[0]));}
