
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ relkind; scalar_t__ relam; int relnatts; } ;
struct TYPE_6__ {scalar_t__ indexrelid; int indnatts; int indnkeyatts; } ;
struct TYPE_5__ {int amcaninclude; int amcanorder; int amsearcharray; int amsearchnulls; int amclusterable; int amcanbackward; int amcanunique; int amcanmulticol; int amgettuple; int amgetbitmap; int amcanreturn; int amcanorderbyop; scalar_t__ (* amproperty ) (scalar_t__,int,int,char const*,int*,int*) ;} ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ IndexAmRoutine ;
typedef int IndexAMProperty ;
typedef int HeapTuple ;
typedef int FunctionCallInfo ;
typedef TYPE_2__* Form_pg_index ;
typedef TYPE_3__* Form_pg_class ;
typedef int Datum ;
 int AccessShareLock ;
 int Assert (int) ;
 scalar_t__ GETSTRUCT (int ) ;
 TYPE_1__* GetIndexAmRoutineByAmId (scalar_t__,int) ;
 int HeapTupleIsValid (int ) ;
 int INDEXRELID ;
 int INDOPTION_DESC ;
 int INDOPTION_NULLS_FIRST ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 int PG_RETURN_BOOL (int) ;
 int PG_RETURN_NULL () ;
 scalar_t__ RELKIND_INDEX ;
 scalar_t__ RELKIND_PARTITIONED_INDEX ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int index_can_return (int ,int) ;
 int index_close (int ,int ) ;
 int index_open (scalar_t__,int ) ;
 int lookup_prop_name (char const*) ;
 scalar_t__ stub1 (scalar_t__,int,int,char const*,int*,int*) ;
 int test_indoption (int ,int,int,int ,int ,int*) ;

__attribute__((used)) static Datum
indexam_property(FunctionCallInfo fcinfo,
     const char *propname,
     Oid amoid, Oid index_oid, int attno)
{
 bool res = 0;
 bool isnull = 0;
 int natts = 0;
 IndexAMProperty prop;
 IndexAmRoutine *routine;


 prop = lookup_prop_name(propname);


 if (OidIsValid(index_oid))
 {
  HeapTuple tuple;
  Form_pg_class rd_rel;

  Assert(!OidIsValid(amoid));
  tuple = SearchSysCache1(RELOID, ObjectIdGetDatum(index_oid));
  if (!HeapTupleIsValid(tuple))
   PG_RETURN_NULL();
  rd_rel = (Form_pg_class) GETSTRUCT(tuple);
  if (rd_rel->relkind != RELKIND_INDEX &&
   rd_rel->relkind != RELKIND_PARTITIONED_INDEX)
  {
   ReleaseSysCache(tuple);
   PG_RETURN_NULL();
  }
  amoid = rd_rel->relam;
  natts = rd_rel->relnatts;
  ReleaseSysCache(tuple);
 }







 if (attno < 0 || attno > natts)
  PG_RETURN_NULL();




 routine = GetIndexAmRoutineByAmId(amoid, 1);
 if (routine == ((void*)0))
  PG_RETURN_NULL();





 if (routine->amproperty &&
  routine->amproperty(index_oid, attno, prop, propname,
       &res, &isnull))
 {
  if (isnull)
   PG_RETURN_NULL();
  PG_RETURN_BOOL(res);
 }

 if (attno > 0)
 {
  HeapTuple tuple;
  Form_pg_index rd_index;
  bool iskey = 1;






  tuple = SearchSysCache1(INDEXRELID, ObjectIdGetDatum(index_oid));
  if (!HeapTupleIsValid(tuple))
   PG_RETURN_NULL();
  rd_index = (Form_pg_index) GETSTRUCT(tuple);

  Assert(index_oid == rd_index->indexrelid);
  Assert(attno > 0 && attno <= rd_index->indnatts);

  isnull = 1;






  if (routine->amcaninclude
   && attno > rd_index->indnkeyatts)
   iskey = 0;

  switch (prop)
  {
   case 145:
    if (iskey &&
     test_indoption(tuple, attno, routine->amcanorder,
           INDOPTION_DESC, 0, &res))
     isnull = 0;
    break;

   case 136:
    if (iskey &&
     test_indoption(tuple, attno, routine->amcanorder,
           INDOPTION_DESC, INDOPTION_DESC, &res))
     isnull = 0;
    break;

   case 133:
    if (iskey &&
     test_indoption(tuple, attno, routine->amcanorder,
           INDOPTION_NULLS_FIRST, INDOPTION_NULLS_FIRST, &res))
     isnull = 0;
    break;

   case 132:
    if (iskey &&
     test_indoption(tuple, attno, routine->amcanorder,
           INDOPTION_NULLS_FIRST, 0, &res))
     isnull = 0;
    break;

   case 131:




    res = iskey ? routine->amcanorder : 0;
    isnull = 0;
    break;

   case 135:
    if (!iskey || !routine->amcanorderbyop)
    {
     res = 0;
     isnull = 0;
    }
    break;

   case 130:



    isnull = 0;
    res = 0;

    if (routine->amcanreturn)
    {





     Relation indexrel = index_open(index_oid, AccessShareLock);

     res = index_can_return(indexrel, attno);
     index_close(indexrel, AccessShareLock);
    }
    break;

   case 129:
    if (iskey)
    {
     res = routine->amsearcharray;
     isnull = 0;
    }
    break;

   case 128:
    if (iskey)
    {
     res = routine->amsearchnulls;
     isnull = 0;
    }
    break;

   default:
    break;
  }

  ReleaseSysCache(tuple);

  if (!isnull)
   PG_RETURN_BOOL(res);
  PG_RETURN_NULL();
 }

 if (OidIsValid(index_oid))
 {





  switch (prop)
  {
   case 137:
    PG_RETURN_BOOL(routine->amclusterable);

   case 134:
    PG_RETURN_BOOL(routine->amgettuple ? 1 : 0);

   case 143:
    PG_RETURN_BOOL(routine->amgetbitmap ? 1 : 0);

   case 144:
    PG_RETURN_BOOL(routine->amcanbackward);

   default:
    PG_RETURN_NULL();
  }
 }





 switch (prop)
 {
  case 139:
   PG_RETURN_BOOL(routine->amcanorder);

  case 138:
   PG_RETURN_BOOL(routine->amcanunique);

  case 140:
   PG_RETURN_BOOL(routine->amcanmulticol);

  case 142:
   PG_RETURN_BOOL(routine->amgettuple ? 1 : 0);

  case 141:
   PG_RETURN_BOOL(routine->amcaninclude);

  default:
   PG_RETURN_NULL();
 }
}
