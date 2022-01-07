
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int TupleDesc ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int * HeapTuple ;
typedef int Datum ;


 int AccessShareLock ;
 int Anum_pg_description_classoid ;
 int Anum_pg_description_description ;
 int Anum_pg_description_objoid ;
 int Anum_pg_description_objsubid ;
 int BTEqualStrategyNumber ;
 int DescriptionObjIndexId ;
 int DescriptionRelationId ;
 int F_INT4EQ ;
 int F_OIDEQ ;
 int Int32GetDatum (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetDescr (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 char* TextDatumGetCString (int ) ;
 int heap_getattr (int *,int ,int ,int*) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int * systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

char *
GetComment(Oid oid, Oid classoid, int32 subid)
{
 Relation description;
 ScanKeyData skey[3];
 SysScanDesc sd;
 TupleDesc tupdesc;
 HeapTuple tuple;
 char *comment;



 ScanKeyInit(&skey[0],
    Anum_pg_description_objoid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(oid));
 ScanKeyInit(&skey[1],
    Anum_pg_description_classoid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(classoid));
 ScanKeyInit(&skey[2],
    Anum_pg_description_objsubid,
    BTEqualStrategyNumber, F_INT4EQ,
    Int32GetDatum(subid));

 description = table_open(DescriptionRelationId, AccessShareLock);
 tupdesc = RelationGetDescr(description);

 sd = systable_beginscan(description, DescriptionObjIndexId, 1,
       ((void*)0), 3, skey);

 comment = ((void*)0);
 while ((tuple = systable_getnext(sd)) != ((void*)0))
 {
  Datum value;
  bool isnull;


  value = heap_getattr(tuple, Anum_pg_description_description, tupdesc, &isnull);
  if (!isnull)
   comment = TextDatumGetCString(value);
  break;
 }

 systable_endscan(sd);


 table_close(description, AccessShareLock);

 return comment;
}
