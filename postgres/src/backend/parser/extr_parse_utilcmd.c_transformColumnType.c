
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int Type ;
struct TYPE_10__ {TYPE_1__* collClause; int typeName; } ;
struct TYPE_9__ {int pstate; } ;
struct TYPE_8__ {int oid; int typcollation; } ;
struct TYPE_7__ {int location; int collname; } ;
typedef TYPE_2__* Form_pg_type ;
typedef TYPE_3__ CreateStmtContext ;
typedef TYPE_4__ ColumnDef ;


 int ERRCODE_DATATYPE_MISMATCH ;
 int ERROR ;
 int GETSTRUCT (int ) ;
 int LookupCollation (int ,int ,int ) ;
 int OidIsValid (int ) ;
 int ReleaseSysCache (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int format_type_be (int ) ;
 int parser_errposition (int ,int ) ;
 int typenameType (int ,int ,int *) ;

__attribute__((used)) static void
transformColumnType(CreateStmtContext *cxt, ColumnDef *column)
{




 Type ctype = typenameType(cxt->pstate, column->typeName, ((void*)0));

 if (column->collClause)
 {
  Form_pg_type typtup = (Form_pg_type) GETSTRUCT(ctype);

  LookupCollation(cxt->pstate,
      column->collClause->collname,
      column->collClause->location);

  if (!OidIsValid(typtup->typcollation))
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),
      errmsg("collations are not supported by type %s",
       format_type_be(typtup->oid)),
      parser_errposition(cxt->pstate,
          column->collClause->location)));
 }

 ReleaseSysCache(ctype);
}
