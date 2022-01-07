
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double dval; scalar_t__ ival; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ u; } ;
typedef TYPE_2__ PgBenchValue ;


 scalar_t__ PGBT_DOUBLE ;
 scalar_t__ PGBT_INT ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 char* valueTypeName (TYPE_2__*) ;

__attribute__((used)) static bool
coerceToDouble(PgBenchValue *pval, double *dval)
{
 if (pval->type == PGBT_DOUBLE)
 {
  *dval = pval->u.dval;
  return 1;
 }
 else if (pval->type == PGBT_INT)
 {
  *dval = (double) pval->u.ival;
  return 1;
 }
 else
 {
  fprintf(stderr, "cannot coerce %s to double\n", valueTypeName(pval));
  return 0;
 }
}
