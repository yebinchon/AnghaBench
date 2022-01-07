
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HUGE_VAL ;
 scalar_t__ INFINITY ;

__attribute__((used)) static double
get_float8_infinity(void)
{



 return (double) (HUGE_VAL * HUGE_VAL);

}
