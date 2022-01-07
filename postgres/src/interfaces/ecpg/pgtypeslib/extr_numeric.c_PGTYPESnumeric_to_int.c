
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int numeric ;


 long INT_MAX ;
 int PGTYPES_NUM_OVERFLOW ;
 int PGTYPESnumeric_to_long (int *,long*) ;
 int errno ;

int
PGTYPESnumeric_to_int(numeric *nv, int *ip)
{
 long l;
 int i;

 if ((i = PGTYPESnumeric_to_long(nv, &l)) != 0)
  return i;

 if (l < -INT_MAX || l > INT_MAX)
 {
  errno = PGTYPES_NUM_OVERFLOW;
  return -1;
 }

 *ip = (int) l;
 return 0;
}
