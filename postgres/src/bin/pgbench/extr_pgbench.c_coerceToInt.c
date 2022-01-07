
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_5__ {int dval; scalar_t__ ival; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ u; } ;
typedef TYPE_2__ PgBenchValue ;


 int FLOAT8_FITS_IN_INT64 (double) ;
 scalar_t__ PGBT_DOUBLE ;
 scalar_t__ PGBT_INT ;
 int fprintf (int ,char*,...) ;
 scalar_t__ isnan (double) ;
 double rint (int ) ;
 int stderr ;
 char* valueTypeName (TYPE_2__*) ;

__attribute__((used)) static bool
coerceToInt(PgBenchValue *pval, int64 *ival)
{
 if (pval->type == PGBT_INT)
 {
  *ival = pval->u.ival;
  return 1;
 }
 else if (pval->type == PGBT_DOUBLE)
 {
  double dval = rint(pval->u.dval);

  if (isnan(dval) || !FLOAT8_FITS_IN_INT64(dval))
  {
   fprintf(stderr, "double to int overflow for %f\n", dval);
   return 0;
  }
  *ival = (int64) dval;
  return 1;
 }
 else
 {
  fprintf(stderr, "cannot coerce %s to int\n", valueTypeName(pval));
  return 0;
 }
}
