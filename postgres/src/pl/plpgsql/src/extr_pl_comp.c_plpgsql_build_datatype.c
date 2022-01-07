
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int TypeName ;
typedef int PLpgSQL_type ;
typedef int Oid ;
typedef int HeapTuple ;


 int ERROR ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TYPEOID ;
 int * build_datatype (int ,int ,int ,int *) ;
 int elog (int ,char*,int ) ;

PLpgSQL_type *
plpgsql_build_datatype(Oid typeOid, int32 typmod,
        Oid collation, TypeName *origtypname)
{
 HeapTuple typeTup;
 PLpgSQL_type *typ;

 typeTup = SearchSysCache1(TYPEOID, ObjectIdGetDatum(typeOid));
 if (!HeapTupleIsValid(typeTup))
  elog(ERROR, "cache lookup failed for type %u", typeOid);

 typ = build_datatype(typeTup, typmod, collation, origtypname);

 ReleaseSysCache(typeTup);

 return typ;
}
