
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int numeric ;
typedef int decimal ;


 int ECPG_INFORMIX_NUM_OVERFLOW ;
 int ECPG_INFORMIX_OUT_OF_MEMORY ;
 int PGTYPES_NUM_OVERFLOW ;
 int PGTYPESnumeric_free (int *) ;
 scalar_t__ PGTYPESnumeric_from_decimal (int *,int *) ;
 int * PGTYPESnumeric_new () ;
 int PGTYPESnumeric_to_int (int *,int*) ;

int
dectoint(decimal *np, int *ip)
{
 int ret;
 numeric *nres = PGTYPESnumeric_new();

 if (nres == ((void*)0))
  return ECPG_INFORMIX_OUT_OF_MEMORY;

 if (PGTYPESnumeric_from_decimal(np, nres) != 0)
 {
  PGTYPESnumeric_free(nres);
  return ECPG_INFORMIX_OUT_OF_MEMORY;
 }

 ret = PGTYPESnumeric_to_int(nres, ip);
 PGTYPESnumeric_free(nres);

 if (ret == PGTYPES_NUM_OVERFLOW)
  ret = ECPG_INFORMIX_NUM_OVERFLOW;

 return ret;
}
