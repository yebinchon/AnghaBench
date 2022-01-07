
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double log (int) ;
 double log1p (double) ;

__attribute__((used)) static double php_log1p(double x)
{



 return(log(1 + x));

}
