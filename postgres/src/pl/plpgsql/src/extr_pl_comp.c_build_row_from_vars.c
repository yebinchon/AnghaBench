
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_13__ {int rectypeid; } ;
struct TYPE_12__ {char* refname; int lineno; int nfields; int rowtupdesc; int * varnos; int * fieldnames; int dtype; } ;
struct TYPE_11__ {TYPE_1__* datatype; } ;
struct TYPE_10__ {int dtype; int refname; int dno; int isconst; } ;
struct TYPE_9__ {int atttypmod; int collation; int typoid; } ;
typedef TYPE_2__ PLpgSQL_variable ;
typedef TYPE_3__ PLpgSQL_var ;
typedef TYPE_4__ PLpgSQL_row ;
typedef TYPE_5__ PLpgSQL_rec ;
typedef int Oid ;


 int Assert (int) ;
 int CreateTemplateTupleDesc (int) ;
 int ERROR ;
 int InvalidOid ;


 int PLPGSQL_DTYPE_ROW ;

 int TupleDescInitEntry (int ,int,int ,int ,int,int ) ;
 int TupleDescInitEntryCollation (int ,int,int ) ;
 int elog (int ,char*,int) ;
 void* palloc (int) ;
 TYPE_4__* palloc0 (int) ;

__attribute__((used)) static PLpgSQL_row *
build_row_from_vars(PLpgSQL_variable **vars, int numvars)
{
 PLpgSQL_row *row;
 int i;

 row = palloc0(sizeof(PLpgSQL_row));
 row->dtype = PLPGSQL_DTYPE_ROW;
 row->refname = "(unnamed row)";
 row->lineno = -1;
 row->rowtupdesc = CreateTemplateTupleDesc(numvars);
 row->nfields = numvars;
 row->fieldnames = palloc(numvars * sizeof(char *));
 row->varnos = palloc(numvars * sizeof(int));

 for (i = 0; i < numvars; i++)
 {
  PLpgSQL_variable *var = vars[i];
  Oid typoid;
  int32 typmod;
  Oid typcoll;


  Assert(!var->isconst);

  switch (var->dtype)
  {
   case 128:
   case 130:
    typoid = ((PLpgSQL_var *) var)->datatype->typoid;
    typmod = ((PLpgSQL_var *) var)->datatype->atttypmod;
    typcoll = ((PLpgSQL_var *) var)->datatype->collation;
    break;

   case 129:

    typoid = ((PLpgSQL_rec *) var)->rectypeid;
    typmod = -1;
    typcoll = InvalidOid;
    break;

   default:
    elog(ERROR, "unrecognized dtype: %d", var->dtype);
    typoid = InvalidOid;
    typmod = 0;
    typcoll = InvalidOid;
    break;
  }

  row->fieldnames[i] = var->refname;
  row->varnos[i] = var->dno;

  TupleDescInitEntry(row->rowtupdesc, i + 1,
         var->refname,
         typoid, typmod,
         0);
  TupleDescInitEntryCollation(row->rowtupdesc, i + 1, typcoll);
 }

 return row;
}
