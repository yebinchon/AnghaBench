
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int numeric ;
typedef int decimal ;


 int CDECIMALTYPE ;
 int CINTTYPE ;
 int ECPG_INFORMIX_OUT_OF_MEMORY ;
 int PGTYPESnumeric_free (int *) ;
 int PGTYPESnumeric_from_int (int,int *) ;
 int * PGTYPESnumeric_new () ;
 int PGTYPESnumeric_to_decimal (int *,int *) ;
 scalar_t__ risnull (int ,char*) ;
 int rsetnull (int ,char*) ;

int
deccvint(int in, decimal *np)
{
 numeric *nres;
 int result = 1;

 rsetnull(CDECIMALTYPE, (char *) np);
 if (risnull(CINTTYPE, (char *) &in))
  return 0;

 nres = PGTYPESnumeric_new();
 if (nres == ((void*)0))
  return ECPG_INFORMIX_OUT_OF_MEMORY;

 result = PGTYPESnumeric_from_int(in, nres);
 if (result == 0)
  result = PGTYPESnumeric_to_decimal(nres, np);

 PGTYPESnumeric_free(nres);
 return result;
}
