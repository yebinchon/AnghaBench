
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ TypeFuncClass ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_10__ {int attname; } ;
struct TYPE_9__ {int natts; int tdtypmod; int tdtypeid; } ;
typedef int Oid ;
typedef int List ;
typedef TYPE_2__* Form_pg_attribute ;
typedef int AttrNumber ;


 TYPE_1__* CreateTemplateTupleDesc (int) ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERROR ;
 int * NIL ;
 int RECORDOID ;
 scalar_t__ TYPEFUNC_COMPOSITE ;
 scalar_t__ TYPEFUNC_RECORD ;
 scalar_t__ TYPEFUNC_SCALAR ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 int TupleDescInitEntry (TYPE_1__*,int ,char*,int ,int,int ) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ get_type_func_class (int ,int *) ;
 int linitial (int *) ;
 int list_length (int *) ;
 int list_nth (int *,int) ;
 TYPE_1__* lookup_rowtype_tupdesc_copy (int ,int) ;
 int namestrcpy (int *,char*) ;
 char* strVal (int ) ;

TupleDesc
TypeGetTupleDesc(Oid typeoid, List *colaliases)
{
 Oid base_typeoid;
 TypeFuncClass functypclass = get_type_func_class(typeoid, &base_typeoid);
 TupleDesc tupdesc = ((void*)0);







 if (functypclass == TYPEFUNC_COMPOSITE)
 {

  tupdesc = lookup_rowtype_tupdesc_copy(base_typeoid, -1);

  if (colaliases != NIL)
  {
   int natts = tupdesc->natts;
   int varattno;


   if (list_length(colaliases) != natts)
    ereport(ERROR,
      (errcode(ERRCODE_DATATYPE_MISMATCH),
       errmsg("number of aliases does not match number of columns")));


   for (varattno = 0; varattno < natts; varattno++)
   {
    char *label = strVal(list_nth(colaliases, varattno));
    Form_pg_attribute attr = TupleDescAttr(tupdesc, varattno);

    if (label != ((void*)0))
     namestrcpy(&(attr->attname), label);
   }


   tupdesc->tdtypeid = RECORDOID;
   tupdesc->tdtypmod = -1;
  }
 }
 else if (functypclass == TYPEFUNC_SCALAR)
 {

  char *attname;


  if (colaliases == NIL)
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),
      errmsg("no column alias was provided")));


  if (list_length(colaliases) != 1)
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),
      errmsg("number of aliases does not match number of columns")));


  attname = strVal(linitial(colaliases));

  tupdesc = CreateTemplateTupleDesc(1);
  TupleDescInitEntry(tupdesc,
         (AttrNumber) 1,
         attname,
         typeoid,
         -1,
         0);
 }
 else if (functypclass == TYPEFUNC_RECORD)
 {

  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),
     errmsg("could not determine row description for function returning record")));
 }
 else
 {

  elog(ERROR, "function in FROM has unsupported return type");
 }

 return tupdesc;
}
