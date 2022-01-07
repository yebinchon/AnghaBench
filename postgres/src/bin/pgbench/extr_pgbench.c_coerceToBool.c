
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bval; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ u; } ;
typedef TYPE_2__ PgBenchValue ;


 scalar_t__ PGBT_BOOLEAN ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 char* valueTypeName (TYPE_2__*) ;

__attribute__((used)) static bool
coerceToBool(PgBenchValue *pval, bool *bval)
{
 if (pval->type == PGBT_BOOLEAN)
 {
  *bval = pval->u.bval;
  return 1;
 }
 else
 {
  fprintf(stderr, "cannot coerce %s to boolean\n", valueTypeName(pval));
  *bval = 0;
  return 0;
 }
}
