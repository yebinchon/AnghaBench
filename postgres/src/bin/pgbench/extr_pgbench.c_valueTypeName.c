
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ PgBenchValue ;


 int Assert (int) ;
 scalar_t__ PGBT_BOOLEAN ;
 scalar_t__ PGBT_DOUBLE ;
 scalar_t__ PGBT_INT ;
 scalar_t__ PGBT_NO_VALUE ;
 scalar_t__ PGBT_NULL ;

__attribute__((used)) static char *
valueTypeName(PgBenchValue *pval)
{
 if (pval->type == PGBT_NO_VALUE)
  return "none";
 else if (pval->type == PGBT_NULL)
  return "null";
 else if (pval->type == PGBT_INT)
  return "int";
 else if (pval->type == PGBT_DOUBLE)
  return "double";
 else if (pval->type == PGBT_BOOLEAN)
  return "boolean";
 else
 {

  Assert(0);
  return ((void*)0);
 }
}
