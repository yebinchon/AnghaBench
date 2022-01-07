
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int typbyval; int typlen; int typcollation; int typinput; } ;
typedef int Oid ;
typedef int Node ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_type ;
typedef int Datum ;


 int Anum_pg_type_typdefault ;
 int Anum_pg_type_typdefaultbin ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int OidInputFunctionCall (int ,char*,int ,int) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int TYPEOID ;
 char* TextDatumGetCString (int ) ;
 int elog (int ,char*,int ) ;
 int getTypeIOParam (int ) ;
 scalar_t__ makeConst (int ,int,int ,int ,int ,int,int ) ;
 int pfree (char*) ;
 int * stringToNode (char*) ;

Node *
get_typdefault(Oid typid)
{
 HeapTuple typeTuple;
 Form_pg_type type;
 Datum datum;
 bool isNull;
 Node *expr;

 typeTuple = SearchSysCache1(TYPEOID, ObjectIdGetDatum(typid));
 if (!HeapTupleIsValid(typeTuple))
  elog(ERROR, "cache lookup failed for type %u", typid);
 type = (Form_pg_type) GETSTRUCT(typeTuple);






 datum = SysCacheGetAttr(TYPEOID,
       typeTuple,
       Anum_pg_type_typdefaultbin,
       &isNull);

 if (!isNull)
 {

  expr = stringToNode(TextDatumGetCString(datum));
 }
 else
 {

  datum = SysCacheGetAttr(TYPEOID,
        typeTuple,
        Anum_pg_type_typdefault,
        &isNull);

  if (!isNull)
  {
   char *strDefaultVal;


   strDefaultVal = TextDatumGetCString(datum);

   datum = OidInputFunctionCall(type->typinput, strDefaultVal,
           getTypeIOParam(typeTuple), -1);

   expr = (Node *) makeConst(typid,
           -1,
           type->typcollation,
           type->typlen,
           datum,
           0,
           type->typbyval);
   pfree(strDefaultVal);
  }
  else
  {

   expr = ((void*)0);
  }
 }

 ReleaseSysCache(typeTuple);

 return expr;
}
