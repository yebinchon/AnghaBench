
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decimal ;


 int ECPG_INFORMIX_NUM_OVERFLOW ;
 int ECPG_INFORMIX_NUM_UNDERFLOW ;
 scalar_t__ PGTYPES_NUM_OVERFLOW ;
 scalar_t__ PGTYPES_NUM_UNDERFLOW ;
 int PGTYPESnumeric_add ;
 int deccall3 (int *,int *,int *,int ) ;
 scalar_t__ errno ;

int
decadd(decimal *arg1, decimal *arg2, decimal *sum)
{
 errno = 0;
 deccall3(arg1, arg2, sum, PGTYPESnumeric_add);

 if (errno == PGTYPES_NUM_OVERFLOW)
  return ECPG_INFORMIX_NUM_OVERFLOW;
 else if (errno == PGTYPES_NUM_UNDERFLOW)
  return ECPG_INFORMIX_NUM_UNDERFLOW;
 else if (errno != 0)
  return -1;
 else
  return 0;
}
