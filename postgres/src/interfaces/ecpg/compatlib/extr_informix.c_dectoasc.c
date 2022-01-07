
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dscale; } ;
typedef TYPE_1__ numeric ;
typedef int decimal ;


 int CDECIMALTYPE ;
 int CSTRINGTYPE ;
 int ECPG_INFORMIX_OUT_OF_MEMORY ;
 int PGTYPESnumeric_free (TYPE_1__*) ;
 scalar_t__ PGTYPESnumeric_from_decimal (int *,TYPE_1__*) ;
 TYPE_1__* PGTYPESnumeric_new () ;
 char* PGTYPESnumeric_to_asc (TYPE_1__*,int) ;
 int free (char*) ;
 scalar_t__ risnull (int ,char*) ;
 int rsetnull (int ,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

int
dectoasc(decimal *np, char *cp, int len, int right)
{
 char *str;
 numeric *nres;

 rsetnull(CSTRINGTYPE, (char *) cp);
 if (risnull(CDECIMALTYPE, (char *) np))
  return 0;

 nres = PGTYPESnumeric_new();
 if (nres == ((void*)0))
  return ECPG_INFORMIX_OUT_OF_MEMORY;

 if (PGTYPESnumeric_from_decimal(np, nres) != 0)
 {
  PGTYPESnumeric_free(nres);
  return ECPG_INFORMIX_OUT_OF_MEMORY;
 }

 if (right >= 0)
  str = PGTYPESnumeric_to_asc(nres, right);
 else
  str = PGTYPESnumeric_to_asc(nres, nres->dscale);

 PGTYPESnumeric_free(nres);
 if (!str)
  return -1;





 if ((int) (strlen(str) + 1) > len)
 {
  if (len > 1)
  {
   cp[0] = '*';
   cp[1] = '\0';
  }
  free(str);
  return -1;
 }
 else
 {
  strcpy(cp, str);
  free(str);
  return 0;
 }
}
