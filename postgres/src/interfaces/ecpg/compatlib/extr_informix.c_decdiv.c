
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decimal ;


 int ECPG_INFORMIX_DIVIDE_ZERO ;
 int ECPG_INFORMIX_NUM_OVERFLOW ;
 int ECPG_INFORMIX_NUM_UNDERFLOW ;


 int PGTYPESnumeric_div ;
 int deccall3 (int *,int *,int *,int ) ;
 int errno ;

int
decdiv(decimal *n1, decimal *n2, decimal *result)
{
 int i;

 errno = 0;
 i = deccall3(n1, n2, result, PGTYPESnumeric_div);

 if (i != 0)
  switch (errno)
  {
   case 129:
    return ECPG_INFORMIX_DIVIDE_ZERO;
    break;
   case 128:
    return ECPG_INFORMIX_NUM_OVERFLOW;
    break;
   default:
    return ECPG_INFORMIX_NUM_UNDERFLOW;
    break;
  }

 return 0;
}
