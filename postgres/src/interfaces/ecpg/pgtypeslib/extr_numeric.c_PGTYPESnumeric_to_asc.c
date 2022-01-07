
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int dscale; } ;
typedef TYPE_1__ numeric ;


 scalar_t__ PGTYPESnumeric_copy (TYPE_1__*,TYPE_1__*) ;
 int PGTYPESnumeric_free (TYPE_1__*) ;
 TYPE_1__* PGTYPESnumeric_new () ;
 char* get_str_from_var (TYPE_1__*,int) ;

char *
PGTYPESnumeric_to_asc(numeric *num, int dscale)
{
 numeric *numcopy = PGTYPESnumeric_new();
 char *s;

 if (numcopy == ((void*)0))
  return ((void*)0);

 if (PGTYPESnumeric_copy(num, numcopy) < 0)
 {
  PGTYPESnumeric_free(numcopy);
  return ((void*)0);
 }

 if (dscale < 0)
  dscale = num->dscale;


 s = get_str_from_var(numcopy, dscale);
 PGTYPESnumeric_free(numcopy);
 return s;
}
