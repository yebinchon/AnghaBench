
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int numeric ;
typedef int decimal ;


 int ECPG_INFORMIX_OUT_OF_MEMORY ;
 int PGTYPESnumeric_free (int *) ;
 scalar_t__ PGTYPESnumeric_from_decimal (int *,int *) ;
 int * PGTYPESnumeric_new () ;
 int PGTYPESnumeric_to_double (int *,double*) ;

int
dectodbl(decimal *np, double *dblp)
{
 int i;
 numeric *nres = PGTYPESnumeric_new();

 if (nres == ((void*)0))
  return ECPG_INFORMIX_OUT_OF_MEMORY;

 if (PGTYPESnumeric_from_decimal(np, nres) != 0)
 {
  PGTYPESnumeric_free(nres);
  return ECPG_INFORMIX_OUT_OF_MEMORY;
 }

 i = PGTYPESnumeric_to_double(nres, dblp);
 PGTYPESnumeric_free(nres);

 return i;
}
