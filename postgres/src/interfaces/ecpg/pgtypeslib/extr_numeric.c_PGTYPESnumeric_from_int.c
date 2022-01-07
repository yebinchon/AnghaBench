
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int numeric ;


 int PGTYPESnumeric_from_long (long,int *) ;

int
PGTYPESnumeric_from_int(signed int int_val, numeric *var)
{

 signed long int long_int = int_val;

 return PGTYPESnumeric_from_long(long_int, var);
}
