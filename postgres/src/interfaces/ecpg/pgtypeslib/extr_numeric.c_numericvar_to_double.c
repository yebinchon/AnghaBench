
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int dscale; } ;
typedef TYPE_1__ numeric ;


 scalar_t__ ERANGE ;
 scalar_t__ PGTYPES_NUM_BAD_NUMERIC ;
 scalar_t__ PGTYPES_NUM_OVERFLOW ;
 scalar_t__ PGTYPES_NUM_UNDERFLOW ;
 scalar_t__ PGTYPESnumeric_copy (TYPE_1__*,TYPE_1__*) ;
 int PGTYPESnumeric_free (TYPE_1__*) ;
 TYPE_1__* PGTYPESnumeric_new () ;
 scalar_t__ errno ;
 int free (char*) ;
 char* get_str_from_var (TYPE_1__*,int ) ;
 double strtod (char*,char**) ;

__attribute__((used)) static int
numericvar_to_double(numeric *var, double *dp)
{
 char *tmp;
 double val;
 char *endptr;
 numeric *varcopy = PGTYPESnumeric_new();

 if (varcopy == ((void*)0))
  return -1;

 if (PGTYPESnumeric_copy(var, varcopy) < 0)
 {
  PGTYPESnumeric_free(varcopy);
  return -1;
 }

 tmp = get_str_from_var(varcopy, varcopy->dscale);
 PGTYPESnumeric_free(varcopy);

 if (tmp == ((void*)0))
  return -1;




 errno = 0;
 val = strtod(tmp, &endptr);
 if (errno == ERANGE)
 {
  free(tmp);
  if (val == 0)
   errno = PGTYPES_NUM_UNDERFLOW;
  else
   errno = PGTYPES_NUM_OVERFLOW;
  return -1;
 }


 if (*endptr != '\0')
 {

  free(tmp);
  errno = PGTYPES_NUM_BAD_NUMERIC;
  return -1;
 }
 free(tmp);
 *dp = val;
 return 0;
}
