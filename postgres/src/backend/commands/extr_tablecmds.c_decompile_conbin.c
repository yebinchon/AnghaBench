
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_2__ {int conrelid; int oid; } ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_constraint ;
typedef int Datum ;


 int Anum_pg_constraint_conbin ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int ObjectIdGetDatum (int ) ;
 char* TextDatumGetCString (int ) ;
 int elog (int ,char*,int ) ;
 int heap_getattr (int ,int ,int ,int*) ;
 int pg_get_expr ;

__attribute__((used)) static char *
decompile_conbin(HeapTuple contup, TupleDesc tupdesc)
{
 Form_pg_constraint con;
 bool isnull;
 Datum attr;
 Datum expr;

 con = (Form_pg_constraint) GETSTRUCT(contup);
 attr = heap_getattr(contup, Anum_pg_constraint_conbin, tupdesc, &isnull);
 if (isnull)
  elog(ERROR, "null conbin for constraint %u", con->oid);

 expr = DirectFunctionCall2(pg_get_expr, attr,
          ObjectIdGetDatum(con->conrelid));
 return TextDatumGetCString(expr);
}
