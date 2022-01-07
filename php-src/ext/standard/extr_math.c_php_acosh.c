
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double ZEND_NAN ;
 double acosh (double) ;
 double log (scalar_t__) ;
 scalar_t__ sqrt (double) ;

__attribute__((used)) static double php_acosh(double x)
{
 return(log(x + sqrt(x * x - 1)));


}
